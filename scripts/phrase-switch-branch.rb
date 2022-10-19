#!/usr/bin/env ruby
require './scripts/phrase-env.rb'
require './scripts/phrase-utils.rb'

# カレントブランチを変更する
#
# 現在のカレントブランチには行頭に `*` が付きます。

def main()
  current_branch  = get_current_branch()
  main_branch     = get_main_branch()
  remote_branches = get_remote_branches()

  branches = [main_branch] + remote_branches

  branches.each_with_index do |branch, index|
    if branch.name == current_branch.name
      print "[#{index}] * "
    else
      print "[#{index}]   "
    end

    puts "#{branch.name}"
  end

  branch_index = prompt("どのブランチに移動しますか? 数字で入力してください [N]: ").to_i
  new_branch = branches[branch_index]
  switch_to(branch: new_branch)
  puts "Switched to #{new_branch.name}"
end

main()
