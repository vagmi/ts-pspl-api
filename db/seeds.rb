client = Client.create(name: "PSPL", email: "teja@pspl.com")
1.upto(10) do |i|
  project = client.projects.create(name: "Project #{i}")
  1.upto(rand(50)) do |j|
    project.time_entries.create(client_id: client.id,
                               project_id: project.id,
                               date: Date.today - rand(30).days,
                               description: Faker::Lorem.words(10).join(' '),
                               minutes: 15+(rand(4)*15),
                               billable: ((rand(100) % 3)!=0))
  end
end
