namespace :tmp do
  desc "Clear session, cache, and socket files from tmp/ (narrow w/ tmp:sessions:clear, tmp:cache:clear, tmp:sockets:clear)"
  task :clear => [ "tmp:sessions:clear",  "tmp:cache:clear", "tmp:sockets:clear"]

  desc "Creates tmp directories for sessions, cache, sockets, and pids"
  task :create do
    FileUtils.mkdir_p(File.join(Rails.configuration.paths["tmp"],"sessions"))
    FileUtils.mkdir_p(File.join(Rails.configuration.paths["tmp"],"cache"))
    FileUtils.mkdir_p(File.join(Rails.configuration.paths["tmp"],"sockets"))
    FileUtils.mkdir_p(File.join(Rails.configuration.paths["tmp"],"pids"))
    FileUtils.mkdir_p(File.join(Rails.configuration.paths["tmp"],"cache/assets"))
  end

  namespace :sessions do
    # desc "Clears all files in tmp/sessions"
    task :clear do
      FileUtils.rm(Dir[File.join(Rails.configuration.paths["tmp"],'sessions/[^.]*')])
    end
  end

  namespace :cache do
    # desc "Clears all files and directories in tmp/cache"
    task :clear do
      FileUtils.rm_rf(Dir[File.join(Rails.configuration.paths["tmp"],'cache/[^.]*')])
    end
  end

  namespace :sockets do
    # desc "Clears all files in tmp/sockets"
    task :clear do
      FileUtils.rm(Dir[File.join(Rails.configuration.paths["tmp"],'sockets/[^.]*')])
    end
  end

  namespace :pids do
    # desc "Clears all files in tmp/pids"
    task :clear do
      FileUtils.rm(Dir[File.join(Rails.configuration.paths["tmp"],'pids/[^.]*')])
    end
  end
end
