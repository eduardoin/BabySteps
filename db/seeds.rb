Kid.destroy_all
User.destroy_all
user = User.new(username: 'sveta', email: 'sveta.berrios@gmail.com', password: '123456')
user.save!

kid1 = Kid.new(name: 'Lyalya', gender: 'Female', born_at: Time.new(2018-01-1))
kid1.users << user
kid1.photo = File.open('app/assets/images/toddler.jpg')
kid1.save!

measurement = Measurement.new(kid: kid1, type: "Height", value: 49.0, kid_id: 25, measured_at: Time.new("2018-12-01 16:00:00"))
kid1.measurements << measurement
measurement.save!


measurement = Measurement.new(kid: kid1, type: "Height", value: 52.0, kid_id: 25, measured_at: Time.new("2019-01-01 12:00:00"))
kid1.measurements << measurement
measurement.save!

measurement = Measurement.new(kid: kid1, type: "Height", value: 57.0, kid_id: 25, measured_at: Time.new("2019-02-29 15:00:00"))
kid1.measurements << measurement
measurement.save!

measurement = Measurement.new(kid: kid1, type: "Height", value: 62.0, kid_id: 25, measured_at: Time.new("2019-04-07 14:40:00"))
kid1.measurements << measurement
measurement.save!

measurement = Measurement.new(kid: kid1, type: "Height", value: 70.0, kid_id: 25, measured_at: Time.new("2019-05-30 12:00:00"))
kid1.measurements << measurement
measurement.save!

measurement = Measurement.new(kid: kid1, type: "Height", value: 78.0, kid_id: 25, measured_at: Time.new("2019-07-30 15:00:00"))
kid1.measurements << measurement
measurement.save!

measurement = Measurement.new(kid: kid1, type: "Weight", value: 4.2, kid_id: 25, measured_at: Time.new("2018-12-01 16:00:00"))
kid1.measurements << measurement
measurement.save!

measurement = Measurement.new(kid: kid1, type: "Weight", value: 5.3, kid_id: 25, measured_at: Time.new("2019-01-01 12:00:00"))
kid1.measurements << measurement
measurement.save!

measurement = Measurement.new(kid: kid1, type: "Weight", value: 7.1, kid_id: 25, measured_at: Time.new("2019-02-29 15:00:00"))
kid1.measurements << measurement
measurement.save!

measurement = Measurement.new(kid: kid1, type: "Weight", value: 8.6, kid_id: 25, measured_at: Time.new("2019-04-07 14:40:00"))
kid1.measurements << measurement
measurement.save!

measurement = Measurement.new(kid: kid1, type: "Weight", value: 10.7, kid_id: 25, measured_at: Time.new("2019-05-30 12:00:00"))
kid1.measurements << measurement
measurement.save!

measurement = Measurement.new(kid: kid1, type: "Weight", value: 12.0, kid_id: 25, measured_at: Time.new("2019-07-30 15:00:00"))
kid1.measurements << measurement
measurement.save!

episode = Episode.new(kid: kid1, type: "DiaperChanging", data: {"pee"=>"1", "poop"=>"0", "rash"=>"0", "blood"=>"0", "diarrhea"=>"0"}, tracked_at: Time.new("2019-01-07 02:00:00"))
episode.save!
kid1.episodes << episode

episode = Episode.new(kid: kid1, type: "Other", note:   "Lyalya slept after medicine for 3 hours.", tracked_at: Time.new("2019-1-07 17:00:00"))
episode.save!
kid1.episodes << episode

episode = Episode.new(kid: kid1, type: "Medication",  data: {"name"=>"amoxicillin", "amount"=>"10ml"}, note:  "2 times per day", tracked_at: Time.new("2019-01-013 08:00:00"))
episode.save!
kid1.episodes << episode

episode = Episode.new(kid: kid1, type: "Feeding",  data: {"food_name"=>"brest milk"}, tracked_at: Time.new("2019-01-13 014:35:00"))
episode.save!
kid1.episodes << episode

episode = Episode.new(kid: kid1, type: "Fever",  data: {"temperature"=>"34"}, tracked_at: Time.new("2019-01-18 20:15:00"))
episode.save!
kid1.episodes << episode

episode = Episode.new(kid: kid1, type: "Bruise",  data: {"incident"=>"fall", "body_part"=>"face"}, tracked_at: Time.new("2019-01-20 015:00:00"))
episode.save!
kid1.episodes << episode

episode = Episode.new(kid: kid1, type: "Other", note:   "Lyalya did not have a map.", tracked_at: Time.new("2019-01-17 03:05:00"))
episode.save!
kid1.episodes << episode

episode = Episode.new(kid: kid1, type: "Bruise",  data: {"incident"=>"fall", "body_part"=>"leg"}, tracked_at: Time.new("2019-01-06 012:05:00"))
episode.save!
kid1.episodes << episode

episode = Episode.new(kid: kid1, type: "DiaperChanging", data: {"pee"=>"1", "poop"=>"1", "rash"=>"0", "blood"=>"0", "diarrhea"=>"0"}, tracked_at: Time.new("2019-01-15 21:50:00"))
episode.save!
kid1.episodes << episode

episode = Episode.new(kid: kid1, type: "Feeding",  data: {"food_name"=>"brest milk"}, tracked_at: Time.new("2019-01-24 23:00:00"))
episode.save!
kid1.episodes << episode

episode = Episode.new(kid: kid1, type: "Medication",  data: {"name"=>"amoxicillin", "amount"=>"5ml"}, note:  "3 times per day", tracked_at: Time.new("2019-01-26 02:30:00"))
episode.save!
kid1.episodes << episode

episode = Episode.new(kid: kid1, type: "Other", note:   "Lyalya were hiccuping all day.", tracked_at: Time.new("2019-01-23 22:00:00"))
episode.save!
kid1.episodes << episode



kid2 = Kid.new(name: 'Lea', gender: 'Female', born_at: Time.new(2016-02-21))
kid2.users << user
kid2.photo = File.open('app/assets/images/girl.jpg')
kid2.save!

measurement = Measurement.new(kid: kid2, type: "Height", value: 100.0, kid_id: 25, measured_at: Time.new("2018-12-01 16:00:00"))
kid2.measurements << measurement
measurement.save!


measurement = Measurement.new(kid: kid2, type: "Height", value: 110.0, kid_id: 25, measured_at: Time.new("2019-01-01 12:00:00"))
kid2.measurements << measurement
measurement.save!

measurement = Measurement.new(kid: kid2, type: "Height", value: 115.0, kid_id: 25, measured_at: Time.new("2019-02-29 15:00:00"))
kid2.measurements << measurement
measurement.save!

measurement = Measurement.new(kid: kid2, type: "Height", value: 121.0, kid_id: 25, measured_at: Time.new("2019-04-07 14:40:00"))
kid2.measurements << measurement
measurement.save!

measurement = Measurement.new(kid: kid2, type: "Height", value: 125.0, kid_id: 25, measured_at: Time.new("2019-05-30 12:00:00"))
kid2.measurements << measurement
measurement.save!

measurement = Measurement.new(kid: kid2, type: "Height", value: 130.0, kid_id: 25, measured_at: Time.new("2019-07-30 15:00:00"))
kid2.measurements << measurement
measurement.save!

measurement = Measurement.new(kid: kid2, type: "Weight", value: 20.2, kid_id: 25, measured_at: Time.new("2018-12-01 16:00:00"))
kid2.measurements << measurement
measurement.save!

measurement = Measurement.new(kid: kid2, type: "Weight", value: 23.3, kid_id: 25, measured_at: Time.new("2019-01-01 12:00:00"))
kid2.measurements << measurement
measurement.save!

measurement = Measurement.new(kid: kid2, type: "Weight", value: 24.1, kid_id: 25, measured_at: Time.new("2019-02-29 15:00:00"))
kid2.measurements << measurement
measurement.save!

measurement = Measurement.new(kid: kid2, type: "Weight", value: 28.6, kid_id: 25, measured_at: Time.new("2019-04-07 14:40:00"))
kid2.measurements << measurement
measurement.save!

measurement = Measurement.new(kid: kid2, type: "Weight", value: 30.7, kid_id: 25, measured_at: Time.new("2019-05-30 12:00:00"))
kid2.measurements << measurement
measurement.save!

measurement = Measurement.new(kid: kid2, type: "Weight", value: 40.0, kid_id: 25, measured_at: Time.new("2019-07-30 15:00:00"))
kid2.measurements << measurement
measurement.save!

episode = Episode.new(kid: kid2, type: "Medication",  data: {"name"=>"cough syrup", "amount"=>"1tbs"}, note:  "5 times per day", tracked_at: Time.new(2019-03-25))
episode.save!
kid2.episodes << episode

episode = Episode.new(kid: kid2, type: "Feeding",  data: {"food_name"=>"chicken nuggets"}, tracked_at: Time.new(2019-03-24))
episode.save!
kid2.episodes << episode

episode = Episode.new(kid: kid2, type: "Fever",  data: {"temperature"=>"37"}, tracked_at: Time.new(2019-03-23))
episode.save!
kid2.episodes << episode

episode = Episode.new(kid: kid2, type: "Bruise",  data: {"incident"=>"fall", "body_part"=>"face"}, tracked_at: Time.new(2019-03-22))
episode.save!
kid2.episodes << episode

episode = Episode.new(kid: kid2, type: "Other", note:   "Lea were coughing all day.", tracked_at: Time.new(2019-03-23))
episode.save!
kid2.episodes << episode

episode = Episode.new(kid: kid2, type: "Bruise",  data: {"incident"=>"bike accident", "body_part"=>"elbow"}, tracked_at: Time.new(2019-03-19))
episode.save!
kid2.episodes << episode

episode = Episode.new(kid: kid2, type: "DiaperChanging", data: {"pee"=>"1", "poop"=>"0", "rash"=>"1", "blood"=>"0", "diarrhea"=>"0"}, tracked_at: Time.new(2019-03-25))
episode.save!
kid2.episodes << episode

episode = Episode.new(kid: kid2, type: "Feeding",  data: {"food_name"=>"oatmeal"}, tracked_at: Time.new(2019-03-21))
episode.save!
kid2.episodes << episode

episode = Episode.new(kid: kid2, type: "Medication",  data: {"name"=>"cough syrup", "amount"=>"1tbs"}, note:  "5 times per day", tracked_at: Time.new(2019-03-24))
episode.save!
kid2.episodes << episode

episode = Episode.new(kid: kid2, type: "Other", note:   "Lea were hiccuping all day.", tracked_at: Time.new(2019-03-20))
episode.save!
kid2.episodes << episode

