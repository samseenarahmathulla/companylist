namespace :test_task_namespace do
  desc "One line task description"
  task :name_of_task do
    # Your code goes here
    puts "hello"
  end
end

# RUN  rake test_task_namespace:name_of_task in the cmd