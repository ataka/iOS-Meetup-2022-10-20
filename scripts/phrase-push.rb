#!/usr/bin/env ruby
require 'json'
require './scripts/phrase-env.rb'
require './scripts/phrase-utils.rb'

# phrase コマンドでカレントブランチを push する
#
# カレントブランチ名は .phrase-branch.txt に保存しています。
# .phrase-branch.txt が空の場合は master ブランチから pull します。

def main()
  current_branch = get_current_branch()

  if current_branch.is_main
    `phrase push`
  else
    `phrase push --branch #{current_branch.name}`
  end
end

main()
