user_1 = User.create(username: 'AdminUser', role: 1, email: 'admin@gmail.com', password: "123admin")
user_2 = User.create(username: 'RegUser', role: 0, email: 'reg@gmail.com', password: "123reg")

journeyman_1 = Journeyman.create(name: 'Raul', skill: 'carpenter', country: 'Mexico', city: 'Tijuana', price: 110.0)
journeyman_1.image.attach(io: File.open("app/assets/images/carpenter.jpeg"), filename: "carpenter.jpeg")

journeyman_2 = Journeyman.create(name: 'Gubber', skill: 'electrician', country: 'USA', city: 'San Diego', price: 90)
journeyman_2.image.attach(io: File.open("app/assets/images/electrician.jpeg"), filename: "electrician.jpeg")

journeyman_3 = Journeyman.create(name: 'Honey', skill: 'gardener', country: 'France', city: 'Lyon', price: 80)
journeyman_3.image.attach(io: File.open("app/assets/images/gardener.jpeg"), filename: "gardener.jpeg")

journeyman_4 = Journeyman.create(name: 'Doofus', skill: 'mason', country: 'Argentina', city: 'Cordoba', price: 70)
journeyman_4.image.attach(io: File.open("app/assets/images/mason.jpeg"), filename: "mason.jpeg")

journeyman_5 = Journeyman.create(name: 'Gubber', skill: 'plumber', country: 'Chile', city: 'Valparaiso', price: 95)
journeyman_5.image.attach(io: File.open("app/assets/images/plumber.jpeg"), filename: "plumber.jpeg")

reservation_1 = Reservation.create(user_id: 1, journeyman_id: 1, start_date: '07 Aug 2022 21:20:49.262680000', number_days: 7)
reservation_2 = Reservation.create(user_id: 2, journeyman_id: 2, start_date: '07 Sep 2022 21:20:49.262680000', number_days: 5)
reservation_3 = Reservation.create(user_id: 1, journeyman_id: 3, start_date: '07 Oct 2022 21:20:49.262680000', number_days: 3)
reservation_4 = Reservation.create(user_id: 1, journeyman_id: 5, start_date: '07 Nov 2022 21:20:49.262680000', number_days: 9)
reservation_5 = Reservation.create(user_id: 2, journeyman_id: 4, start_date: '07 Dec 2022 21:20:49.262680000', number_days: 6)