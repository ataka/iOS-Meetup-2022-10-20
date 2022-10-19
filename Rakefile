desc "環境をセットアップする"
task :setup => %w[
     phrase:setup
]

namespace :phrase do
  desc "Phrase cli をインストールする"
  task :setup do
    sh "brew tap phrase/brewed"
    sh "brew install phrase"
  end

  desc "phrase pull を実行する"
  task :pull do
#   sh "phrase pull"
    sh "./scripts/phrase-pull.rb" # ブランチ対応版
  end

  desc "phrase push を実行する"
  task :push do
#   sh "phrase push"
    sh "./scripts/phrase-push.rb" # ブランチ対応版
  end

  namespace :branch do
    desc "phrase でブランチを作成する"
    task :create do
      sh "./scripts/phrase-create-branch.rb"
    end

    desc "phrase でブランチを削除する"
    task :delete do
      sh "./scripts/phrase-delete-branch.rb"
    end

    desc "phrase でブランチ一覧を表示する"
    task :list do
      sh "./scripts/phrase-list-branch.rb"
    end

    desc "カレントブランチを変更する"
    task :switch do
      sh "./scripts/phrase-switch-branch.rb"
    end

    desc "カレントブランチを main ブランチにマージする"
    task :merge do
      sh "./scripts/phrase-merge-branch.rb"
    end
  end
end

namespace :ls2xs do
  desc "ls2xs をインストールする"
  task :setup do
    sh "brew install ataka/formulae/ls2xs"
  end

  desc "ls2xs を実行する"
  task :run do
    ls2xs = "/usr/local/bin/ls2xs"
    sh "#{ls2xs} iOS\\ Meetup\\ 2022-10-20"
  end
end
