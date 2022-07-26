user_1 = User.create(username: 'GlumpPunk09', role: 1, password: '12345')
user_1 = User.create(username: 'BillyBoy10', role: 0, password: '67890')

journeyman_1 = Journeyman.create(name: 'Raul', skill: 'carpenter', country: 'Mexico', city: 'Tijuana', price: 110.0, journeyman_pic: 'thisPic123')
journeyman_1 = Journeyman.create(name: 'Gubber', skill: 'electrician', country: 'USA', city: 'San Diego', price: 90, journeyman_pic: 'thatPic123')

reservation_1 = Reservation.create(user_id: 1, journeyman_id: 1, start_date: '07 Aug 2022 21:20:49.262680000', number_days: 7)
reservation_1 = Reservation.create(user_id: 2, journeyman_id: 2, start_date: '07 Sep 2022 21:20:49.262680000', number_days: 5)