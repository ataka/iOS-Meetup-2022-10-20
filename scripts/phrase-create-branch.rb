#!/usr/bin/env ruby
require 'json'
require './scripts/phrase-env.rb'
require './scripts/phrase-utils.rb'

# phrase コマンドでブランチを作成する
#
# 作成したブランチ名は .phrase-branch.txt に保存する。

def main()
  branch_name = prompt "作成するブランチ名を入力してください: "
  branch = PhraseBranch.new(name: branch_name,
                            is_main: false)
  switch_to(branch: branch)

  data_dict = {"name": branch.name}
  data = data_dict.to_json
  PhraseEnv::PROJECTS.each do |project|
    puts "create branch: #{branch.name} in #{project.name}"
    result_json = `phrase branches create --project_id #{project.id} --data '#{data}'`
    result = JSON.parse(result_json)
    puts "state = #{result["state"]}, created at = #{result["created_at"]}"
  end
end

main()
