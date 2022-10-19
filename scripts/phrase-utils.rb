#!/usr/bin/env ruby
require 'json'
require './scripts/phrase-env.rb'

# テキストを表示して、標準入力から入力を受け取る
def prompt(*args)
  print(*args)
  STDIN.gets.chomp
end

# メインブランチを返す
def get_main_branch()
  PhraseBranch.new(name: 'main',
                   is_main: true)
end

# カレントブランチを返す
def get_current_branch()
  current_branch_name = File.read(PhraseEnv::BRANCH_NAME_FILE).chomp
  if current_branch_name.empty?
    get_main_branch()
  else
    PhraseBranch.new(name: current_branch_name,
                     is_main: false)
  end
end

# リモートブランチの配列を返す
def get_remote_branches()
  project = PhraseEnv::PROJECTS.first
  result_json = `phrase branches list --project_id #{project.id}`
  branches = JSON.parse(result_json)
  branches.map do |branch|
    PhraseBranch.new(name: branch["name"],
                     created_at: branch["created_at"],
                     is_main: false)
  end
end

# カレントブランチを引数のブランチに切り替える
#
# 内部的には BRANCH_NAME_FILE にブランチ名を保存しているだけです。
def switch_to(branch:)
  branch_name = branch.is_main ? '' : branch.name
  `echo #{branch_name} > #{PhraseEnv::BRANCH_NAME_FILE}`
end

# ブランチを削除する
#
# ブランチの削除は、マージ直後に実行したりすると失敗します。
# サーバー側の準備が整っていないのではないかと思いますが、理由は不明です。
# ブランチの削除成功・失敗が分かれば retry の手もありますが、
# `branches delete` に関してはレスポンスを返さず HTTP Status 204 を返すのみです。
# phrase コマンドから HTTP Status は分からないので、特に何もしていません。
#
# `branches show` を使って
def delete(branch:)
  PhraseEnv::PROJECTS.each do |project|
    `phrase branches delete --project_id #{project.id} --name #{branch.name}`
  end
end

# ブランチが存在するなら true を返す
#
# ブランチのマージ直後に削除を行なっても、サーバーの準備が整っていないのか失敗することがあります。
# ブランチの削除に成功したのか失敗したのかを調べるために本メソッドを用意しました。
# しかし、ブランチの削除直後にこのメソッドを実行しても、
# サーバーの準備が整っていないのか失敗しました。
# 
# というわけで、このメソッドは現在利用していません。
# 同じことをやろうとする人のために、このコードとこのコメントを残します。
def check_availability(branch:)
  project = PhraseEnv::PROJECTS.first
  result_json = `phrase branches show --project_id #{project.id} --name a#{branch.name}`
  result = JSON.parse(result_json)
  result["state"] == "success"
rescue
  false
end
