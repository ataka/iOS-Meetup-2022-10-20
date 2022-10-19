#!/usr/bin/env ruby
require './scripts/phrase-env.rb'
require './scripts/phrase-utils.rb'

# 指定したブランチを削除する
#
# カレントブランチは削除対象のブランチから外されます。

def main()
  current_branch = get_current_branch()
  remote_branches = get_remote_branches()

  branches = remote_branches.filter { |branch| branch.name != current_branch.name }
  if branches.empty?
    puts "削除できるブランチがありません (カレントブランチを削除する場合は switch してから使ってください)。"
    exit
  end

  branches.each_with_index do |branch, index|
    if branch.name == current_branch.name
      print "[#{index}] * "
    else
      print "[#{index}]   "
    end

    puts "#{branch.name}"
  end

  branch_index = prompt("どのブランチを削除しますか? 数字で入力してください [N]: ").to_i
  delete(branch: branches[branch_index])
end

main()
