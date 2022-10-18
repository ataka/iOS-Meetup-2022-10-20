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
    sh "phrase pull"
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
