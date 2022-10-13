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
