desc 'Cleaning compiled assets and precompiling assets'
namespace :assets do
  task :all do
    puts "Cleaning compiled assets ...\n\n"
    Rake::Task['assets:clean'].invoke
    puts "\nFinished cleaning compiled assets.\n\n"
    puts "Precompiling assets ...\n\n"
    Rake::Task['assets:precompile'].invoke
    puts "\nFinished precompiling assets.\n"
    puts "Cleaning compiled assets again ...\n\n"
    Rake::Task['assets:clean'].invoke
    puts "\nFinished cleaning compiled assets."
  end
end