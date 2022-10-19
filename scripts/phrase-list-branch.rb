#!/usr/bin/env ruby
require './scripts/phrase-env.rb'
require './scripts/phrase-utils.rb'

# phrase コマンドでブランチの一覧を表示する
#
# 対象は `iOS Meetup 2022-10-20` です。
# カレントブランチには行頭に `*` が付きます。

def main()
  current_branch  = get_current_branch()
  main_branch     = get_main_branch()
  remote_branches = get_remote_branches()

  ([main_branch] + remote_branches).each do |branch|
    if branch.name == current_branch.name
      print "* "
    else
      print "  "
    end

    puts "#{branch.name}"
  end
end

main()
