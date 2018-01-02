#station_lines - joining table
 a = StationLine.create(line_name: "A")
 b = StationLine.create(line_name: "B")
 c = StationLine.create(line_name: "C")
 d = StationLine.create(line_name: "D")
 e = StationLine.create(line_name: "E")

#stations
 wall = Station.create(name: "Wall Street")
 bowl = Station.create(name: "Bowling Green")
 canal = Station.create(name: "Canal Street")
 barclay = Station.create(name: "Barclays Center")
 astor = Station.create(name: "Astor Place")

 #train_lines
manhattan = Train.create(name: "Manhattan")
dumbo = Train.create(name: "Dumbo")
harlem = Train.create(name: "Harlem")
les = Train.create(name: "Lower East Side")
midtown = Train.create(name: "Midtown")

  #Creating the associations - train and station_lines
manhattan.station_lines << a
dumbo.station_lines << b
harlem.station_lines << c
les.station_lines << d
midtown.station_lines << e


  #station and station_lines
wall.station_lines << a
bowl.station_lines << b
canal.station_lines << c
barclay.station_lines << d
astor.station_lines << e
