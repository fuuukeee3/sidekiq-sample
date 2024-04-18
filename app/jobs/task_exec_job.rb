class TaskExecJob < ApplicationJob
  queue_as :default

  def perform(**args)
    task = args[:task]
    sleep 5
    puts "#{ Time.zone.now.strftime('%Y/%m/%d-%H:%M:%S')} #{task.content}を実行しました。"
  end
end