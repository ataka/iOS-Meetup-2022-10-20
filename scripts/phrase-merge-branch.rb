#!/usr/bin/env ruby
require './scripts/phrase-env.rb'
require './scripts/phrase-utils.rb'

# カレントブランチを main ブランチにマージする
#
# 成功後、カレントブランチは main に変更されます。
# コンフリクト発生時はカレントブランチの変更が勝ちます。
# カレントブランチがメインブランチの時は警告を出して exit します。

def main()
  current_branch = get_current_branch()

  if current_branch.is_main
    puts "メインブランチでマージはできません。switch してから使ってください"
    exit
  end

  data_dict = {"strategy": "use_branch"} # コンフリクトしたらカレントブランチを使う
  # data_dict = {"strategy": "use_master"} # コンフリクトしたらメインブランチを使う
  data = data_dict.to_json

  PhraseEnv::PROJECTS.each do |project|
    puts "merge branch: #{current_branch.name} in #{project.name}"
    `phrase branches merge --project_id #{project.id} --name #{current_branch.name} --data '#{data}'`
  end

  # 2022-09-05 マージ後のブランチ削除はこのスクリプトでは行ないません。
  # やったら、マージに失敗して元ブランチも失なわれてしまいました。

  puts "Merge success!  Switched to main branch!!"
  main_branch = get_main_branch()
  switch_to(branch: main_branch)
end

main()
