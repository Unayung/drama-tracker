User.create!([
  {email: "unayung@gmail.com", encrypted_password: "$2a$10$Y.joZpOZQQQSz1j8ifKjyOiDmGnRqTxKR1NMzHThnVN4Vi5SEM.82", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 17, current_sign_in_at: "2014-04-06 11:16:43", last_sign_in_at: "2014-04-06 09:26:42", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", fb_id: "649064390", name: "unayung"}
])
Category.create!([
  {name: "美劇"},
  {name: "日劇"},
  {name: "韓劇"}
])
Drama.create!([
  {name: "Elementary 基本演繹法", category_id: 1, description: "", image: ""},
  {name: "Supernatural 超自然檔案", category_id: 1, description: "", image: ""},
  {name: "The Walking Dead 陰屍路", category_id: 1, description: "", image: ""},
  {name: "急診男女", category_id: 3, description: "", image: ""}
])
Episode.create!([
  {drama_id: 2, season: 2, number: 19, title: "The Many Mouths of Andrew Colville", description: "A serial killer known for biting his victims appears to be killing again, even though he was presumed dead.", play_date: "2014-04-03"},
  {drama_id: 2, season: 2, number: 18, title: "The Hound of the Cancer Cells", description: "When a famous cancer researcher is found dead, Holmes and Watson must determine if the scientist's untimely demise was tied to his latest cutting-edge invention. Meanwhile, Bell is finally cleared to re-enter the field.", play_date: "2014-03-13"},
  {drama_id: 4, season: 9, number: 14, title: "Captives", description: "Kevin's spirit returns to ask Sam and Dean to find his mother. Castiel is taken to Bartholomew.", play_date: "2014-02-25"},
  {drama_id: 4, season: 2, number: 15, title: "#thinman", description: "As Dean and Sam investigate the murder of a teenage girl, they once again cross paths with the Ghostfacers.", play_date: "2014-03-04"},
  {drama_id: 4, season: 9, number: 16, title: "Blade Runners", description: "Sam and Dean assist Crowley in the search for the first blade.", play_date: "2014-03-18"},
  {drama_id: 4, season: 9, number: 17, title: "Mother's Little Helper", description: "Dean copes with the side effects of the Mark of Cain, as Sam investigates a series of violent murders related directly to Abaddon.", play_date: "2014-03-25"},
  {drama_id: 5, season: 4, number: 15, title: "Us", description: "Glenn and Tara are set on the way to Terminus, but Abraham and his companions are reluctant. Meanwhile, conflict starts to rise between Daryl and one of the marauders, Len.", play_date: "2014-03-23"},
  {drama_id: 5, season: 4, number: 16, title: "A", description: "Rick, Carl and Michonne cross paths with the marauders once again on the way to Terminus, as the so-called sanctuary begins to reveal its true face.", play_date: "2014-03-30"}
])
WatchedRecord.create!([
  {user_id: 1, episode_id: 2},
  {user_id: 1, episode_id: 3},
  {user_id: 1, episode_id: 4},
  {user_id: 1, episode_id: 7},
  {user_id: 1, episode_id: 8}
])
