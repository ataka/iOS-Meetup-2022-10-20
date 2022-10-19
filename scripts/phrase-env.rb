#!/usr/bin/env ruby

PhraseProject = Struct.new(:name, :id, keyword_init: true)
PhraseBranch = Struct.new(:name, :created_at, :is_main, keyword_init: true)

class PhraseEnv
  BRANCH_NAME_FILE = ".phrase-branch.txt"

  PROJECTS = [
    PhraseProject.new(name: "iOS Meetup 2022-10-20",
                      id: '7e298527564b0d917e2ed416d6748a55'),
  ]
end
