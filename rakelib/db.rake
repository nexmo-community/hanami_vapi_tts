namespace :db do
  desc 'Seed the database'
  task :seed do
    repository = VoiceRepository.new
    repository.create(name: 'English', code: 'en-US')
    repository.create(name: 'Arabic', code: 'ar')
    repository.create(name: 'Hebrew', code: 'he-IL')
  end
end