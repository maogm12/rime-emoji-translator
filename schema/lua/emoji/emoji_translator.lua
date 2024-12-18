-- emoji_translator.lua

-- translate input ":emoji_name" to emoji

local emoji_data_en = [[
#️⃣	hash
*️⃣	keycap_star
0️⃣	zero
1️⃣	one
2️⃣	two
3️⃣	three
4️⃣	four
5️⃣	five
6️⃣	six
7️⃣	seven
8️⃣	eight
9️⃣	nine
©️	copyright
®️	registered
🀄	mahjong
🃏	black_joker
🅰️	a
🅱️	b
🅾️	o2
🅿️	parking
🆎	ab
🆑	cl
🆒	cool
🆓	free
🆔	id
🆕	new
🆖	ng
🆗	ok
🆘	sos
🆙	up
🆚	vs
🇦🇨	flag_ac
🇦🇩	flag_ad
🇦🇪	flag_ae
🇦🇫	flag_af
🇦🇬	flag_ag
🇦🇮	flag_ai
🇦🇱	flag_al
🇦🇲	flag_am
🇦🇴	flag_ao
🇦🇶	flag_aq
🇦🇷	flag_ar
🇦🇸	flag_as
🇦🇹	flag_at
🇦🇺	flag_au
🇦🇼	flag_aw
🇦🇽	flag_ax
🇦🇿	flag_az
🇧🇦	flag_ba
🇧🇧	flag_bb
🇧🇩	flag_bd
🇧🇪	flag_be
🇧🇫	flag_bf
🇧🇬	flag_bg
🇧🇭	flag_bh
🇧🇮	flag_bi
🇧🇯	flag_bj
🇧🇱	flag_bl
🇧🇲	flag_bm
🇧🇳	flag_bn
🇧🇴	flag_bo
🇧🇶	flag_bq
🇧🇷	flag_br
🇧🇸	flag_bs
🇧🇹	flag_bt
🇧🇻	flag_bv
🇧🇼	flag_bw
🇧🇾	flag_by
🇧🇿	flag_bz
🇨🇦	flag_ca
🇨🇨	flag_cc
🇨🇩	flag_cd
🇨🇫	flag_cf
🇨🇬	flag_cg
🇨🇭	flag_ch
🇨🇮	flag_ci
🇨🇰	flag_ck
🇨🇱	flag_cl
🇨🇲	flag_cm
🇨🇳	cn flag_cn
🇨🇴	flag_co
🇨🇵	flag_cp
🇨🇷	flag_cr
🇨🇺	flag_cu
🇨🇻	flag_cv
🇨🇼	flag_cw
🇨🇽	flag_cx
🇨🇾	flag_cy
🇨🇿	flag_cz
🇩🇪	de flag_de
🇩🇬	flag_dg
🇩🇯	flag_dj
🇩🇰	flag_dk
🇩🇲	flag_dm
🇩🇴	flag_do
🇩🇿	flag_dz
🇪🇦	flag_ea
🇪🇨	flag_ec
🇪🇪	flag_ee
🇪🇬	flag_eg
🇪🇭	flag_eh
🇪🇷	flag_er
🇪🇸	es flag_es
🇪🇹	flag_et
🇪🇺	flag_eu
🇫🇮	flag_fi
🇫🇯	flag_fj
🇫🇰	flag_fk
🇫🇲	flag_fm
🇫🇴	flag_fo
🇫🇷	fr flag_fr
🇬🇦	flag_ga
🇬🇧	gb uk flag_gb
🇬🇩	flag_gd
🇬🇪	flag_ge
🇬🇫	flag_gf
🇬🇬	flag_gg
🇬🇭	flag_gh
🇬🇮	flag_gi
🇬🇱	flag_gl
🇬🇲	flag_gm
🇬🇳	flag_gn
🇬🇵	flag_gp
🇬🇶	flag_gq
🇬🇷	flag_gr
🇬🇸	flag_gs
🇬🇹	flag_gt
🇬🇺	flag_gu
🇬🇼	flag_gw
🇬🇾	flag_gy
🇭🇰	flag_hk
🇭🇲	flag_hm
🇭🇳	flag_hn
🇭🇷	flag_hr
🇭🇹	flag_ht
🇭🇺	flag_hu
🇮🇨	flag_ic
🇮🇩	flag_id
🇮🇪	flag_ie
🇮🇱	flag_il
🇮🇲	flag_im
🇮🇳	flag_in
🇮🇴	flag_io
🇮🇶	flag_iq
🇮🇷	flag_ir
🇮🇸	flag_is
🇮🇹	it flag_it
🇯🇪	flag_je
🇯🇲	flag_jm
🇯🇴	flag_jo
🇯🇵	jp flag_jp
🇰🇪	flag_ke
🇰🇬	flag_kg
🇰🇭	flag_kh
🇰🇮	flag_ki
🇰🇲	flag_km
🇰🇳	flag_kn
🇰🇵	flag_kp
🇰🇷	kr flag_kr
🇰🇼	flag_kw
🇰🇾	flag_ky
🇰🇿	flag_kz
🇱🇦	flag_la
🇱🇧	flag_lb
🇱🇨	flag_lc
🇱🇮	flag_li
🇱🇰	flag_lk
🇱🇷	flag_lr
🇱🇸	flag_ls
🇱🇹	flag_lt
🇱🇺	flag_lu
🇱🇻	flag_lv
🇱🇾	flag_ly
🇲🇦	flag_ma
🇲🇨	flag_mc
🇲🇩	flag_md
🇲🇪	flag_me
🇲🇫	flag_mf
🇲🇬	flag_mg
🇲🇭	flag_mh
🇲🇰	flag_mk
🇲🇱	flag_ml
🇲🇲	flag_mm
🇲🇳	flag_mn
🇲🇴	flag_mo
🇲🇵	flag_mp
🇲🇶	flag_mq
🇲🇷	flag_mr
🇲🇸	flag_ms
🇲🇹	flag_mt
🇲🇺	flag_mu
🇲🇻	flag_mv
🇲🇼	flag_mw
🇲🇽	flag_mx
🇲🇾	flag_my
🇲🇿	flag_mz
🇳🇦	flag_na
🇳🇨	flag_nc
🇳🇪	flag_ne
🇳🇫	flag_nf
🇳🇬	flag_ng
🇳🇮	flag_ni
🇳🇱	flag_nl
🇳🇴	flag_no
🇳🇵	flag_np
🇳🇷	flag_nr
🇳🇺	flag_nu
🇳🇿	flag_nz
🇴🇲	flag_om
🇵🇦	flag_pa
🇵🇪	flag_pe
🇵🇫	flag_pf
🇵🇬	flag_pg
🇵🇭	flag_ph
🇵🇰	flag_pk
🇵🇱	flag_pl
🇵🇲	flag_pm
🇵🇳	flag_pn
🇵🇷	flag_pr
🇵🇸	flag_ps
🇵🇹	flag_pt
🇵🇼	flag_pw
🇵🇾	flag_py
🇶🇦	flag_qa
🇷🇪	flag_re
🇷🇴	flag_ro
🇷🇸	flag_rs
🇷🇺	ru flag_ru
🇷🇼	flag_rw
🇸🇦	flag_sa
🇸🇧	flag_sb
🇸🇨	flag_sc
🇸🇩	flag_sd
🇸🇪	flag_se
🇸🇬	flag_sg
🇸🇭	flag_sh
🇸🇮	flag_si
🇸🇯	flag_sj
🇸🇰	flag_sk
🇸🇱	flag_sl
🇸🇲	flag_sm
🇸🇳	flag_sn
🇸🇴	flag_so
🇸🇷	flag_sr
🇸🇸	flag_ss
🇸🇹	flag_st
🇸🇻	flag_sv
🇸🇽	flag_sx
🇸🇾	flag_sy
🇸🇿	flag_sz
🇹🇦	flag_ta
🇹🇨	flag_tc
🇹🇩	flag_td
🇹🇫	flag_tf
🇹🇬	flag_tg
🇹🇭	flag_th
🇹🇯	flag_tj
🇹🇰	flag_tk
🇹🇱	flag_tl
🇹🇲	flag_tm
🇹🇳	flag_tn
🇹🇴	flag_to
🇹🇷	flag_tr
🇹🇹	flag_tt
🇹🇻	flag_tv
🇹🇼	flag_tw
🇹🇿	flag_tz
🇺🇦	flag_ua
🇺🇬	flag_ug
🇺🇲	flag_um
🇺🇳	flag_un
🇺🇸	us flag_us
🇺🇾	flag_uy
🇺🇿	flag_uz
🇻🇦	flag_va
🇻🇨	flag_vc
🇻🇪	flag_ve
🇻🇬	flag_vg
🇻🇮	flag_vi
🇻🇳	flag_vn
🇻🇺	flag_vu
🇼🇫	flag_wf
🇼🇸	flag_ws
🇽🇰	flag_xk
🇾🇪	flag_ye
🇾🇹	flag_yt
🇿🇦	flag_za
🇿🇲	flag_zm
🇿🇼	flag_zw
🈁	koko
🈂️	sa
🈚	u7121
🈯	u6307
🈲	u7981
🈳	u7a7a
🈴	u5408
🈵	u6e80
🈶	u6709
🈷️	u6708
🈸	u7533
🈹	u5272
🈺	u55b6
🉐	ideograph_advantage
🉑	accept
🌀	cyclone
🌁	foggy
🌂	closed_umbrella
🌃	night_with_stars
🌄	sunrise_over_mountains
🌅	sunrise
🌆	city_sunset
🌇	city_sunrise
🌈	rainbow
🌉	bridge_at_night
🌊	ocean
🌋	volcano
🌌	milky_way
🌍	earth_africa
🌎	earth_americas
🌏	earth_asia
🌐	globe_with_meridians
🌑	new_moon
🌒	waxing_crescent_moon
🌓	first_quarter_moon
🌔	moon waxing_gibbous_moon
🌕	full_moon
🌖	waning_gibbous_moon
🌗	last_quarter_moon
🌘	waning_crescent_moon
🌙	crescent_moon
🌚	new_moon_with_face
🌛	first_quarter_moon_with_face
🌜	last_quarter_moon_with_face
🌝	full_moon_with_face
🌞	sun_with_face
🌟	star2
🌠	stars
🌡️	thermometer
🌤️	mostly_sunny sun_small_cloud
🌥️	barely_sunny sun_behind_cloud
🌦️	partly_sunny_rain sun_behind_rain_cloud
🌧️	rain_cloud
🌨️	snow_cloud
🌩️	lightning lightning_cloud
🌪️	tornado tornado_cloud
🌫️	fog
🌬️	wind_blowing_face
🌭	hotdog
🌮	taco
🌯	burrito
🌰	chestnut
🌱	seedling
🌲	evergreen_tree
🌳	deciduous_tree
🌴	palm_tree
🌵	cactus
🌶️	hot_pepper
🌷	tulip
🌸	cherry_blossom
🌹	rose
🌺	hibiscus
🌻	sunflower
🌼	blossom
🌽	corn
🌾	ear_of_rice
🌿	herb
🍀	four_leaf_clover
🍁	maple_leaf
🍂	fallen_leaf
🍃	leaves
🍄‍🟫	brown_mushroom
🍄	mushroom
🍅	tomato
🍆	eggplant
🍇	grapes
🍈	melon
🍉	watermelon
🍊	tangerine
🍋‍🟩	lime
🍋	lemon
🍌	banana
🍍	pineapple
🍎	apple
🍏	green_apple
🍐	pear
🍑	peach
🍒	cherries
🍓	strawberry
🍔	hamburger
🍕	pizza
🍖	meat_on_bone
🍗	poultry_leg
🍘	rice_cracker
🍙	rice_ball
🍚	rice
🍛	curry
🍜	ramen
🍝	spaghetti
🍞	bread
🍟	fries
🍠	sweet_potato
🍡	dango
🍢	oden
🍣	sushi
🍤	fried_shrimp
🍥	fish_cake
🍦	icecream
🍧	shaved_ice
🍨	ice_cream
🍩	doughnut
🍪	cookie
🍫	chocolate_bar
🍬	candy
🍭	lollipop
🍮	custard
🍯	honey_pot
🍰	cake
🍱	bento
🍲	stew
🍳	fried_egg cooking
🍴	fork_and_knife
🍵	tea
🍶	sake
🍷	wine_glass
🍸	cocktail
🍹	tropical_drink
🍺	beer
🍻	beers
🍼	baby_bottle
🍽️	knife_fork_plate
🍾	champagne
🍿	popcorn
🎀	ribbon
🎁	gift
🎂	birthday
🎃	jack_o_lantern
🎄	christmas_tree
🎅	santa
🎆	fireworks
🎇	sparkler
🎈	balloon
🎉	tada
🎊	confetti_ball
🎋	tanabata_tree
🎌	crossed_flags
🎍	bamboo
🎎	dolls
🎏	flags
🎐	wind_chime
🎑	rice_scene
🎒	school_satchel
🎓	mortar_board
🎖️	medal
🎗️	reminder_ribbon
🎙️	studio_microphone
🎚️	level_slider
🎛️	control_knobs
🎞️	film_frames
🎟️	admission_tickets
🎠	carousel_horse
🎡	ferris_wheel
🎢	roller_coaster
🎣	fishing_pole_and_fish
🎤	microphone
🎥	movie_camera
🎦	cinema
🎧	headphones
🎨	art
🎩	tophat
🎪	circus_tent
🎫	ticket
🎬	clapper
🎭	performing_arts
🎮	video_game
🎯	dart
🎰	slot_machine
🎱	8ball
🎲	game_die
🎳	bowling
🎴	flower_playing_cards
🎵	musical_note
🎶	notes
🎷	saxophone
🎸	guitar
🎹	musical_keyboard
🎺	trumpet
🎻	violin
🎼	musical_score
🎽	running_shirt_with_sash
🎾	tennis
🎿	ski
🏀	basketball
🏁	checkered_flag
🏂	snowboarder
🏃‍♀️	woman_running
🏃‍♀️‍➡️	woman_running_facing_right
🏃‍♂️	man_running
🏃‍♂️‍➡️	man_running_facing_right
🏃‍➡️	person_running_facing_right
🏃	runner running
🏄‍♀️	woman_surfing
🏄‍♂️	man_surfing
🏄	surfer
🏅	sports_medal
🏆	trophy
🏇	horse_racing
🏈	football
🏉	rugby_football
🏊‍♀️	woman_swimming
🏊‍♂️	man_swimming
🏊	swimmer
🏋️‍♀️	woman_lifting_weights
🏋️‍♂️	man_lifting_weights
🏋️	weight_lifter
🏌️‍♀️	woman_golfing
🏌️‍♂️	man_golfing
🏌️	golfer
🏍️	racing_motorcycle
🏎️	racing_car
🏏	cricket_bat_and_ball
🏐	volleyball
🏑	field_hockey_stick_and_ball
🏒	ice_hockey_stick_and_puck
🏓	table_tennis_paddle_and_ball
🏔️	snow_capped_mountain
🏕️	camping
🏖️	beach_with_umbrella
🏗️	building_construction
🏘️	house_buildings
🏙️	cityscape
🏚️	derelict_house_building
🏛️	classical_building
🏜️	desert
🏝️	desert_island
🏞️	national_park
🏟️	stadium
🏠	house
🏡	house_with_garden
🏢	office
🏣	post_office
🏤	european_post_office
🏥	hospital
🏦	bank
🏧	atm
🏨	hotel
🏩	love_hotel
🏪	convenience_store
🏫	school
🏬	department_store
🏭	factory
🏮	izakaya_lantern lantern
🏯	japanese_castle
🏰	european_castle
🏳️‍🌈	rainbow_flag
🏳️‍⚧️	transgender_flag
🏳️	waving_white_flag
🏴‍☠️	pirate_flag
🏴󠁧󠁢󠁥󠁮󠁧󠁿	flag_england
🏴󠁧󠁢󠁳󠁣󠁴󠁿	flag_scotland
🏴󠁧󠁢󠁷󠁬󠁳󠁿	flag_wales
🏴	waving_black_flag
🏵️	rosette
🏷️	label
🏸	badminton_racquet_and_shuttlecock
🏹	bow_and_arrow
🏺	amphora
🏻	skin_tone_2
🏼	skin_tone_3
🏽	skin_tone_4
🏾	skin_tone_5
🏿	skin_tone_6
🐀	rat
🐁	mouse2
🐂	ox
🐃	water_buffalo
🐄	cow2
🐅	tiger2
🐆	leopard
🐇	rabbit2
🐈‍⬛	black_cat
🐈	cat2
🐉	dragon
🐊	crocodile
🐋	whale2
🐌	snail
🐍	snake
🐎	racehorse
🐏	ram
🐐	goat
🐑	sheep
🐒	monkey
🐓	rooster
🐔	chicken
🐕‍🦺	service_dog
🐕	dog2
🐖	pig2
🐗	boar
🐘	elephant
🐙	octopus
🐚	shell
🐛	bug
🐜	ant
🐝	bee honeybee
🐞	ladybug lady_beetle
🐟	fish
🐠	tropical_fish
🐡	blowfish
🐢	turtle
🐣	hatching_chick
🐤	baby_chick
🐥	hatched_chick
🐦‍🔥	phoenix
🐦‍⬛	black_bird
🐦	bird
🐧	penguin
🐨	koala
🐩	poodle
🐪	dromedary_camel
🐫	camel
🐬	dolphin flipper
🐭	mouse
🐮	cow
🐯	tiger
🐰	rabbit
🐱	cat
🐲	dragon_face
🐳	whale
🐴	horse
🐵	monkey_face
🐶	dog
🐷	pig
🐸	frog
🐹	hamster
🐺	wolf
🐻‍❄️	polar_bear
🐻	bear
🐼	panda_face
🐽	pig_nose
🐾	feet paw_prints
🐿️	chipmunk
👀	eyes
👁️‍🗨️	eye_in_speech_bubble
👁️	eye
👂	ear
👃	nose
👄	lips
👅	tongue
👆	point_up_2
👇	point_down
👈	point_left
👉	point_right
👊	facepunch punch
👋	wave
👌	ok_hand
👍	+1 thumbsup
👎	_1 thumbsdown
👏	clap
👐	open_hands
👑	crown
👒	womans_hat
👓	eyeglasses
👔	necktie
👕	shirt tshirt
👖	jeans
👗	dress
👘	kimono
👙	bikini
👚	womans_clothes
👛	purse
👜	handbag
👝	pouch
👞	mans_shoe shoe
👟	athletic_shoe
👠	high_heel
👡	sandal
👢	boot
👣	footprints
👤	bust_in_silhouette
👥	busts_in_silhouette
👦	boy
👧	girl
👨‍🌾	male_farmer
👨‍🍳	male_cook
👨‍🍼	man_feeding_baby
👨‍🎓	male_student
👨‍🎤	male_singer
👨‍🎨	male_artist
👨‍🏫	male_teacher
👨‍🏭	male_factory_worker
👨‍👦‍👦	man_boy_boy
👨‍👦	man_boy
👨‍👧‍👦	man_girl_boy
👨‍👧‍👧	man_girl_girl
👨‍👧	man_girl
👨‍👨‍👦	man_man_boy
👨‍👨‍👦‍👦	man_man_boy_boy
👨‍👨‍👧	man_man_girl
👨‍👨‍👧‍👦	man_man_girl_boy
👨‍👨‍👧‍👧	man_man_girl_girl
👨‍👩‍👦	man_woman_boy
👨‍👩‍👦‍👦	man_woman_boy_boy
👨‍👩‍👧	man_woman_girl
👨‍👩‍👧‍👦	man_woman_girl_boy
👨‍👩‍👧‍👧	man_woman_girl_girl
👨‍💻	male_technologist
👨‍💼	male_office_worker
👨‍🔧	male_mechanic
👨‍🔬	male_scientist
👨‍🚀	male_astronaut
👨‍🚒	male_firefighter
👨‍🦯‍➡️	man_with_white_cane_facing_right
👨‍🦯	man_with_probing_cane
👨‍🦰	red_haired_man
👨‍🦱	curly_haired_man
👨‍🦲	bald_man
👨‍🦳	white_haired_man
👨‍🦼‍➡️	man_in_motorized_wheelchair_facing_right
👨‍🦼	man_in_motorized_wheelchair
👨‍🦽‍➡️	man_in_manual_wheelchair_facing_right
👨‍🦽	man_in_manual_wheelchair
👨‍⚕️	male_doctor
👨‍⚖️	male_judge
👨‍✈️	male_pilot
👨‍❤️‍👨	man_heart_man
👨‍❤️‍💋‍👨	man_kiss_man
👨	man
👩‍🌾	female_farmer
👩‍🍳	female_cook
👩‍🍼	woman_feeding_baby
👩‍🎓	female_student
👩‍🎤	female_singer
👩‍🎨	female_artist
👩‍🏫	female_teacher
👩‍🏭	female_factory_worker
👩‍👦‍👦	woman_boy_boy
👩‍👦	woman_boy
👩‍👧‍👦	woman_girl_boy
👩‍👧‍👧	woman_girl_girl
👩‍👧	woman_girl
👩‍👩‍👦	woman_woman_boy
👩‍👩‍👦‍👦	woman_woman_boy_boy
👩‍👩‍👧	woman_woman_girl
👩‍👩‍👧‍👦	woman_woman_girl_boy
👩‍👩‍👧‍👧	woman_woman_girl_girl
👩‍💻	female_technologist
👩‍💼	female_office_worker
👩‍🔧	female_mechanic
👩‍🔬	female_scientist
👩‍🚀	female_astronaut
👩‍🚒	female_firefighter
👩‍🦯‍➡️	woman_with_white_cane_facing_right
👩‍🦯	woman_with_probing_cane
👩‍🦰	red_haired_woman
👩‍🦱	curly_haired_woman
👩‍🦲	bald_woman
👩‍🦳	white_haired_woman
👩‍🦼‍➡️	woman_in_motorized_wheelchair_facing_right
👩‍🦼	woman_in_motorized_wheelchair
👩‍🦽‍➡️	woman_in_manual_wheelchair_facing_right
👩‍🦽	woman_in_manual_wheelchair
👩‍⚕️	female_doctor
👩‍⚖️	female_judge
👩‍✈️	female_pilot
👩‍❤️‍👨	woman_heart_man
👩‍❤️‍👩	woman_heart_woman
👩‍❤️‍💋‍👨	woman_kiss_man
👩‍❤️‍💋‍👩	woman_kiss_woman
👩	woman
👪	family
👫	man_and_woman_holding_hands woman_and_man_holding_hands couple
👬	two_men_holding_hands men_holding_hands
👭	two_women_holding_hands women_holding_hands
👮‍♀️	female_police_officer
👮‍♂️	male_police_officer
👮	cop
👯‍♀️	women_with_bunny_ears_partying woman_with_bunny_ears_partying
👯‍♂️	men_with_bunny_ears_partying man_with_bunny_ears_partying
👯	dancers
👰‍♀️	woman_with_veil
👰‍♂️	man_with_veil
👰	bride_with_veil
👱‍♀️	blond_haired_woman
👱‍♂️	blond_haired_man
👱	person_with_blond_hair
👲	man_with_gua_pi_mao
👳‍♀️	woman_wearing_turban
👳‍♂️	man_wearing_turban
👳	man_with_turban
👴	older_man
👵	older_woman
👶	baby
👷‍♀️	female_construction_worker
👷‍♂️	male_construction_worker
👷	construction_worker
👸	princess
👹	japanese_ogre
👺	japanese_goblin
👻	ghost
👼	angel
👽	alien
👾	space_invader
👿	imp
💀	skull
💁‍♀️	woman_tipping_hand
💁‍♂️	man_tipping_hand
💁	information_desk_person
💂‍♀️	female_guard
💂‍♂️	male_guard
💂	guardsman
💃	dancer
💄	lipstick
💅	nail_care
💆‍♀️	woman_getting_massage
💆‍♂️	man_getting_massage
💆	massage
💇‍♀️	woman_getting_haircut
💇‍♂️	man_getting_haircut
💇	haircut
💈	barber
💉	syringe
💊	pill
💋	kiss
💌	love_letter
💍	ring
💎	gem
💏	couplekiss
💐	bouquet
💑	couple_with_heart
💒	wedding
💓	heartbeat
💔	broken_heart
💕	two_hearts
💖	sparkling_heart
💗	heartpulse
💘	cupid
💙	blue_heart
💚	green_heart
💛	yellow_heart
💜	purple_heart
💝	gift_heart
💞	revolving_hearts
💟	heart_decoration
💠	diamond_shape_with_a_dot_inside
💡	bulb
💢	anger
💣	bomb
💤	zzz
💥	boom collision
💦	sweat_drops
💧	droplet
💨	dash
💩	hankey poop shit
💪	muscle
💫	dizzy
💬	speech_balloon
💭	thought_balloon
💮	white_flower
💯	100
💰	moneybag
💱	currency_exchange
💲	heavy_dollar_sign
💳	credit_card
💴	yen
💵	dollar
💶	euro
💷	pound
💸	money_with_wings
💹	chart
💺	seat
💻	computer
💼	briefcase
💽	minidisc
💾	floppy_disk
💿	cd
📀	dvd
📁	file_folder
📂	open_file_folder
📃	page_with_curl
📄	page_facing_up
📅	date
📆	calendar
📇	card_index
📈	chart_with_upwards_trend
📉	chart_with_downwards_trend
📊	bar_chart
📋	clipboard
📌	pushpin
📍	round_pushpin
📎	paperclip
📏	straight_ruler
📐	triangular_ruler
📑	bookmark_tabs
📒	ledger
📓	notebook
📔	notebook_with_decorative_cover
📕	closed_book
📖	book open_book
📗	green_book
📘	blue_book
📙	orange_book
📚	books
📛	name_badge
📜	scroll
📝	memo pencil
📞	telephone_receiver
📟	pager
📠	fax
📡	satellite_antenna
📢	loudspeaker
📣	mega
📤	outbox_tray
📥	inbox_tray
📦	package
📧	e_mail
📨	incoming_envelope
📩	envelope_with_arrow
📪	mailbox_closed
📫	mailbox
📬	mailbox_with_mail
📭	mailbox_with_no_mail
📮	postbox
📯	postal_horn
📰	newspaper
📱	iphone
📲	calling
📳	vibration_mode
📴	mobile_phone_off
📵	no_mobile_phones
📶	signal_strength
📷	camera
📸	camera_with_flash
📹	video_camera
📺	tv
📻	radio
📼	vhs
📽️	film_projector
📿	prayer_beads
🔀	twisted_rightwards_arrows
🔁	repeat
🔂	repeat_one
🔃	arrows_clockwise
🔄	arrows_counterclockwise
🔅	low_brightness
🔆	high_brightness
🔇	mute
🔈	speaker
🔉	sound
🔊	loud_sound
🔋	battery
🔌	electric_plug
🔍	mag
🔎	mag_right
🔏	lock_with_ink_pen
🔐	closed_lock_with_key
🔑	key
🔒	lock
🔓	unlock
🔔	bell
🔕	no_bell
🔖	bookmark
🔗	link
🔘	radio_button
🔙	back
🔚	end
🔛	on
🔜	soon
🔝	top
🔞	underage
🔟	keycap_ten
🔠	capital_abcd
🔡	abcd
🔢	1234
🔣	symbols
🔤	abc
🔥	fire
🔦	flashlight
🔧	wrench
🔨	hammer
🔩	nut_and_bolt
🔪	hocho knife
🔫	gun
🔬	microscope
🔭	telescope
🔮	crystal_ball
🔯	six_pointed_star
🔰	beginner
🔱	trident
🔲	black_square_button
🔳	white_square_button
🔴	red_circle
🔵	large_blue_circle
🔶	large_orange_diamond
🔷	large_blue_diamond
🔸	small_orange_diamond
🔹	small_blue_diamond
🔺	small_red_triangle
🔻	small_red_triangle_down
🔼	arrow_up_small
🔽	arrow_down_small
🕉️	om_symbol
🕊️	dove_of_peace
🕋	kaaba
🕌	mosque
🕍	synagogue
🕎	menorah_with_nine_branches
🕐	clock1
🕑	clock2
🕒	clock3
🕓	clock4
🕔	clock5
🕕	clock6
🕖	clock7
🕗	clock8
🕘	clock9
🕙	clock10
🕚	clock11
🕛	clock12
🕜	clock130
🕝	clock230
🕞	clock330
🕟	clock430
🕠	clock530
🕡	clock630
🕢	clock730
🕣	clock830
🕤	clock930
🕥	clock1030
🕦	clock1130
🕧	clock1230
🕯️	candle
🕰️	mantelpiece_clock
🕳️	hole
🕴️	man_in_business_suit_levitating
🕵️‍♀️	female_detective
🕵️‍♂️	male_detective
🕵️	sleuth_or_spy
🕶️	dark_sunglasses
🕷️	spider
🕸️	spider_web
🕹️	joystick
🕺	man_dancing
🖇️	linked_paperclips
🖊️	lower_left_ballpoint_pen
🖋️	lower_left_fountain_pen
🖌️	lower_left_paintbrush
🖍️	lower_left_crayon
🖐️	raised_hand_with_fingers_splayed
🖕	middle_finger reversed_hand_with_middle_finger_extended
🖖	spock_hand
🖤	black_heart
🖥️	desktop_computer
🖨️	printer
🖱️	three_button_mouse
🖲️	trackball
🖼️	frame_with_picture
🗂️	card_index_dividers
🗃️	card_file_box
🗄️	file_cabinet
🗑️	wastebasket
🗒️	spiral_note_pad
🗓️	spiral_calendar_pad
🗜️	compression
🗝️	old_key
🗞️	rolled_up_newspaper
🗡️	dagger_knife
🗣️	speaking_head_in_silhouette
🗨️	left_speech_bubble
🗯️	right_anger_bubble
🗳️	ballot_box_with_ballot
🗺️	world_map
🗻	mount_fuji
🗼	tokyo_tower
🗽	statue_of_liberty
🗾	japan
🗿	moyai
😀	grinning
😁	grin
😂	joy
😃	smiley
😄	smile
😅	sweat_smile
😆	laughing satisfied
😇	innocent
😈	smiling_imp
😉	wink
😊	blush
😋	yum
😌	relieved
😍	heart_eyes
😎	sunglasses
😏	smirk
😐	neutral_face
😑	expressionless
😒	unamused
😓	sweat
😔	pensive
😕	confused
😖	confounded
😗	kissing
😘	kissing_heart
😙	kissing_smiling_eyes
😚	kissing_closed_eyes
😛	stuck_out_tongue
😜	stuck_out_tongue_winking_eye
😝	stuck_out_tongue_closed_eyes
😞	disappointed
😟	worried
😠	angry
😡	rage
😢	cry
😣	persevere
😤	triumph
😥	disappointed_relieved
😦	frowning
😧	anguished
😨	fearful
😩	weary
😪	sleepy
😫	tired_face
😬	grimacing
😭	sob
😮‍💨	face_exhaling
😮	open_mouth
😯	hushed
😰	cold_sweat
😱	scream
😲	astonished
😳	flushed
😴	sleeping
😵‍💫	face_with_spiral_eyes
😵	dizzy_face
😶‍🌫️	face_in_clouds
😶	no_mouth
😷	mask
😸	smile_cat
😹	joy_cat
😺	smiley_cat
😻	heart_eyes_cat
😼	smirk_cat
😽	kissing_cat
😾	pouting_cat
😿	crying_cat_face
🙀	scream_cat
🙁	slightly_frowning_face
🙂‍↔️	head_shaking_horizontally
🙂‍↕️	head_shaking_vertically
🙂	slightly_smiling_face
🙃	upside_down_face
🙄	face_with_rolling_eyes
🙅‍♀️	woman_gesturing_no
🙅‍♂️	man_gesturing_no
🙅	no_good
🙆‍♀️	woman_gesturing_ok
🙆‍♂️	man_gesturing_ok
🙆	ok_woman
🙇‍♀️	woman_bowing
🙇‍♂️	man_bowing
🙇	bow
🙈	see_no_evil
🙉	hear_no_evil
🙊	speak_no_evil
🙋‍♀️	woman_raising_hand
🙋‍♂️	man_raising_hand
🙋	raising_hand
🙌	raised_hands
🙍‍♀️	woman_frowning
🙍‍♂️	man_frowning
🙍	person_frowning
🙎‍♀️	woman_pouting
🙎‍♂️	man_pouting
🙎	person_with_pouting_face
🙏	pray
🚀	rocket
🚁	helicopter
🚂	steam_locomotive
🚃	railway_car
🚄	bullettrain_side
🚅	bullettrain_front
🚆	train2
🚇	metro
🚈	light_rail
🚉	station
🚊	tram
🚋	train
🚌	bus
🚍	oncoming_bus
🚎	trolleybus
🚏	busstop
🚐	minibus
🚑	ambulance
🚒	fire_engine
🚓	police_car
🚔	oncoming_police_car
🚕	taxi
🚖	oncoming_taxi
🚗	car red_car
🚘	oncoming_automobile
🚙	blue_car
🚚	truck
🚛	articulated_lorry
🚜	tractor
🚝	monorail
🚞	mountain_railway
🚟	suspension_railway
🚠	mountain_cableway
🚡	aerial_tramway
🚢	ship
🚣‍♀️	woman_rowing_boat
🚣‍♂️	man_rowing_boat
🚣	rowboat
🚤	speedboat
🚥	traffic_light
🚦	vertical_traffic_light
🚧	construction
🚨	rotating_light
🚩	triangular_flag_on_post
🚪	door
🚫	no_entry_sign
🚬	smoking
🚭	no_smoking
🚮	put_litter_in_its_place
🚯	do_not_litter
🚰	potable_water
🚱	non_potable_water
🚲	bike
🚳	no_bicycles
🚴‍♀️	woman_biking
🚴‍♂️	man_biking
🚴	bicyclist
🚵‍♀️	woman_mountain_biking
🚵‍♂️	man_mountain_biking
🚵	mountain_bicyclist
🚶‍♀️	woman_walking
🚶‍♀️‍➡️	woman_walking_facing_right
🚶‍♂️	man_walking
🚶‍♂️‍➡️	man_walking_facing_right
🚶‍➡️	person_walking_facing_right
🚶	walking
🚷	no_pedestrians
🚸	children_crossing
🚹	mens
🚺	womens
🚻	restroom
🚼	baby_symbol
🚽	toilet
🚾	wc
🚿	shower
🛀	bath
🛁	bathtub
🛂	passport_control
🛃	customs
🛄	baggage_claim
🛅	left_luggage
🛋️	couch_and_lamp
🛌	sleeping_accommodation
🛍️	shopping_bags
🛎️	bellhop_bell
🛏️	bed
🛐	place_of_worship
🛑	octagonal_sign
🛒	shopping_trolley
🛕	hindu_temple
🛖	hut
🛗	elevator
🛜	wireless
🛝	playground_slide
🛞	wheel
🛟	ring_buoy
🛠️	hammer_and_wrench
🛡️	shield
🛢️	oil_drum
🛣️	motorway
🛤️	railway_track
🛥️	motor_boat
🛩️	small_airplane
🛫	airplane_departure
🛬	airplane_arriving
🛰️	satellite
🛳️	passenger_ship
🛴	scooter
🛵	motor_scooter
🛶	canoe
🛷	sled
🛸	flying_saucer
🛹	skateboard
🛺	auto_rickshaw
🛻	pickup_truck
🛼	roller_skate
🟠	large_orange_circle
🟡	large_yellow_circle
🟢	large_green_circle
🟣	large_purple_circle
🟤	large_brown_circle
🟥	large_red_square
🟦	large_blue_square
🟧	large_orange_square
🟨	large_yellow_square
🟩	large_green_square
🟪	large_purple_square
🟫	large_brown_square
🟰	heavy_equals_sign
🤌	pinched_fingers
🤍	white_heart
🤎	brown_heart
🤏	pinching_hand
🤐	zipper_mouth_face
🤑	money_mouth_face
🤒	face_with_thermometer
🤓	nerd_face
🤔	thinking_face
🤕	face_with_head_bandage
🤖	robot_face
🤗	hugging_face
🤘	the_horns sign_of_the_horns
🤙	call_me_hand
🤚	raised_back_of_hand
🤛	left_facing_fist
🤜	right_facing_fist
🤝	handshake
🤞	crossed_fingers hand_with_index_and_middle_fingers_crossed
🤟	i_love_you_hand_sign
🤠	face_with_cowboy_hat
🤡	clown_face
🤢	nauseated_face
🤣	rolling_on_the_floor_laughing
🤤	drooling_face
🤥	lying_face
🤦‍♀️	woman_facepalming
🤦‍♂️	man_facepalming
🤦	face_palm
🤧	sneezing_face
🤨	face_with_raised_eyebrow face_with_one_eyebrow_raised
🤩	star_struck grinning_face_with_star_eyes
🤪	zany_face grinning_face_with_one_large_and_one_small_eye
🤫	shushing_face face_with_finger_covering_closed_lips
🤬	face_with_symbols_on_mouth serious_face_with_symbols_covering_mouth
🤭	face_with_hand_over_mouth smiling_face_with_smiling_eyes_and_hand_covering_mouth
🤮	face_vomiting face_with_open_mouth_vomiting
🤯	exploding_head shocked_face_with_exploding_head
🤰	pregnant_woman
🤱	breast_feeding
🤲	palms_up_together
🤳	selfie
🤴	prince
🤵‍♀️	woman_in_tuxedo
🤵‍♂️	man_in_tuxedo
🤵	person_in_tuxedo
🤶	mrs_claus mother_christmas
🤷‍♀️	woman_shrugging
🤷‍♂️	man_shrugging
🤷	shrug
🤸‍♀️	woman_cartwheeling
🤸‍♂️	man_cartwheeling
🤸	person_doing_cartwheel
🤹‍♀️	woman_juggling
🤹‍♂️	man_juggling
🤹	juggling
🤺	fencer
🤼‍♀️	woman_wrestling
🤼‍♂️	man_wrestling
🤼	wrestlers
🤽‍♀️	woman_playing_water_polo
🤽‍♂️	man_playing_water_polo
🤽	water_polo
🤾‍♀️	woman_playing_handball
🤾‍♂️	man_playing_handball
🤾	handball
🤿	diving_mask
🥀	wilted_flower
🥁	drum_with_drumsticks
🥂	clinking_glasses
🥃	tumbler_glass
🥄	spoon
🥅	goal_net
🥇	first_place_medal
🥈	second_place_medal
🥉	third_place_medal
🥊	boxing_glove
🥋	martial_arts_uniform
🥌	curling_stone
🥍	lacrosse
🥎	softball
🥏	flying_disc
🥐	croissant
🥑	avocado
🥒	cucumber
🥓	bacon
🥔	potato
🥕	carrot
🥖	baguette_bread
🥗	green_salad
🥘	shallow_pan_of_food
🥙	stuffed_flatbread
🥚	egg
🥛	glass_of_milk
🥜	peanuts
🥝	kiwifruit
🥞	pancakes
🥟	dumpling
🥠	fortune_cookie
🥡	takeout_box
🥢	chopsticks
🥣	bowl_with_spoon
🥤	cup_with_straw
🥥	coconut
🥦	broccoli
🥧	pie
🥨	pretzel
🥩	cut_of_meat
🥪	sandwich
🥫	canned_food
🥬	leafy_green
🥭	mango
🥮	moon_cake
🥯	bagel
🥰	smiling_face_with_3_hearts
🥱	yawning_face
🥲	smiling_face_with_tear
🥳	partying_face
🥴	woozy_face
🥵	hot_face
🥶	cold_face
🥷	ninja
🥸	disguised_face
🥹	face_holding_back_tears
🥺	pleading_face
🥻	sari
🥼	lab_coat
🥽	goggles
🥾	hiking_boot
🥿	womans_flat_shoe
🦀	crab
🦁	lion_face
🦂	scorpion
🦃	turkey
🦄	unicorn_face
🦅	eagle
🦆	duck
🦇	bat
🦈	shark
🦉	owl
🦊	fox_face
🦋	butterfly
🦌	deer
🦍	gorilla
🦎	lizard
🦏	rhinoceros
🦐	shrimp
🦑	squid
🦒	giraffe_face
🦓	zebra_face
🦔	hedgehog
🦕	sauropod
🦖	t_rex
🦗	cricket
🦘	kangaroo
🦙	llama
🦚	peacock
🦛	hippopotamus
🦜	parrot
🦝	raccoon
🦞	lobster
🦟	mosquito
🦠	microbe
🦡	badger
🦢	swan
🦣	mammoth
🦤	dodo
🦥	sloth
🦦	otter
🦧	orangutan
🦨	skunk
🦩	flamingo
🦪	oyster
🦫	beaver
🦬	bison
🦭	seal
🦮	guide_dog
🦯	probing_cane
🦴	bone
🦵	leg
🦶	foot
🦷	tooth
🦸‍♀️	female_superhero
🦸‍♂️	male_superhero
🦸	superhero
🦹‍♀️	female_supervillain
🦹‍♂️	male_supervillain
🦹	supervillain
🦺	safety_vest
🦻	ear_with_hearing_aid
🦼	motorized_wheelchair
🦽	manual_wheelchair
🦾	mechanical_arm
🦿	mechanical_leg
🧀	cheese_wedge
🧁	cupcake
🧂	salt
🧃	beverage_box
🧄	garlic
🧅	onion
🧆	falafel
🧇	waffle
🧈	butter
🧉	mate_drink
🧊	ice_cube
🧋	bubble_tea
🧌	troll
🧍‍♀️	woman_standing
🧍‍♂️	man_standing
🧍	standing_person
🧎‍♀️	woman_kneeling
🧎‍♀️‍➡️	woman_kneeling_facing_right
🧎‍♂️	man_kneeling
🧎‍♂️‍➡️	man_kneeling_facing_right
🧎‍➡️	person_kneeling_facing_right
🧎	kneeling_person
🧏‍♀️	deaf_woman
🧏‍♂️	deaf_man
🧏	deaf_person
🧐	face_with_monocle
🧑‍🌾	farmer
🧑‍🍳	cook
🧑‍🍼	person_feeding_baby
🧑‍🎄	mx_claus
🧑‍🎓	student
🧑‍🎤	singer
🧑‍🎨	artist
🧑‍🏫	teacher
🧑‍🏭	factory_worker
🧑‍💻	technologist
🧑‍💼	office_worker
🧑‍🔧	mechanic
🧑‍🔬	scientist
🧑‍🚀	astronaut
🧑‍🚒	firefighter
🧑‍🤝‍🧑	people_holding_hands
🧑‍🦯‍➡️	person_with_white_cane_facing_right
🧑‍🦯	person_with_probing_cane
🧑‍🦰	red_haired_person
🧑‍🦱	curly_haired_person
🧑‍🦲	bald_person
🧑‍🦳	white_haired_person
🧑‍🦼‍➡️	person_in_motorized_wheelchair_facing_right
🧑‍🦼	person_in_motorized_wheelchair
🧑‍🦽‍➡️	person_in_manual_wheelchair_facing_right
🧑‍🦽	person_in_manual_wheelchair
🧑‍🧑‍🧒	family_adult_adult_child
🧑‍🧑‍🧒‍🧒	family_adult_adult_child_child
🧑‍🧒‍🧒	family_adult_child_child
🧑‍🧒	family_adult_child
🧑‍⚕️	health_worker
🧑‍⚖️	judge
🧑‍✈️	pilot
🧑	adult
🧒	child
🧓	older_adult
🧔‍♀️	woman_with_beard
🧔‍♂️	man_with_beard
🧔	bearded_person
🧕	person_with_headscarf
🧖‍♀️	woman_in_steamy_room
🧖‍♂️	man_in_steamy_room
🧖	person_in_steamy_room
🧗‍♀️	woman_climbing
🧗‍♂️	man_climbing
🧗	person_climbing
🧘‍♀️	woman_in_lotus_position
🧘‍♂️	man_in_lotus_position
🧘	person_in_lotus_position
🧙‍♀️	female_mage
🧙‍♂️	male_mage
🧙	mage
🧚‍♀️	female_fairy
🧚‍♂️	male_fairy
🧚	fairy
🧛‍♀️	female_vampire
🧛‍♂️	male_vampire
🧛	vampire
🧜‍♀️	mermaid
🧜‍♂️	merman
🧜	merperson
🧝‍♀️	female_elf
🧝‍♂️	male_elf
🧝	elf
🧞‍♀️	female_genie
🧞‍♂️	male_genie
🧞	genie
🧟‍♀️	female_zombie
🧟‍♂️	male_zombie
🧟	zombie
🧠	brain
🧡	orange_heart
🧢	billed_cap
🧣	scarf
🧤	gloves
🧥	coat
🧦	socks
🧧	red_envelope
🧨	firecracker
🧩	jigsaw
🧪	test_tube
🧫	petri_dish
🧬	dna
🧭	compass
🧮	abacus
🧯	fire_extinguisher
🧰	toolbox
🧱	bricks
🧲	magnet
🧳	luggage
🧴	lotion_bottle
🧵	thread
🧶	yarn
🧷	safety_pin
🧸	teddy_bear
🧹	broom
🧺	basket
🧻	roll_of_paper
🧼	soap
🧽	sponge
🧾	receipt
🧿	nazar_amulet
🩰	ballet_shoes
🩱	one_piece_swimsuit
🩲	briefs
🩳	shorts
🩴	thong_sandal
🩵	light_blue_heart
🩶	grey_heart
🩷	pink_heart
🩸	drop_of_blood
🩹	adhesive_bandage
🩺	stethoscope
🩻	x_ray
🩼	crutch
🪀	yo_yo
🪁	kite
🪂	parachute
🪃	boomerang
🪄	magic_wand
🪅	pinata
🪆	nesting_dolls
🪇	maracas
🪈	flute
🪐	ringed_planet
🪑	chair
🪒	razor
🪓	axe
🪔	diya_lamp
🪕	banjo
🪖	military_helmet
🪗	accordion
🪘	long_drum
🪙	coin
🪚	carpentry_saw
🪛	screwdriver
🪜	ladder
🪝	hook
🪞	mirror
🪟	window
🪠	plunger
🪡	sewing_needle
🪢	knot
🪣	bucket
🪤	mouse_trap
🪥	toothbrush
🪦	headstone
🪧	placard
🪨	rock
🪩	mirror_ball
🪪	identification_card
🪫	low_battery
🪬	hamsa
🪭	folding_hand_fan
🪮	hair_pick
🪯	khanda
🪰	fly
🪱	worm
🪲	beetle
🪳	cockroach
🪴	potted_plant
🪵	wood
🪶	feather
🪷	lotus
🪸	coral
🪹	empty_nest
🪺	nest_with_eggs
🪻	hyacinth
🪼	jellyfish
🪽	wing
🪿	goose
🫀	anatomical_heart
🫁	lungs
🫂	people_hugging
🫃	pregnant_man
🫄	pregnant_person
🫅	person_with_crown
🫎	moose
🫏	donkey
🫐	blueberries
🫑	bell_pepper
🫒	olive
🫓	flatbread
🫔	tamale
🫕	fondue
🫖	teapot
🫗	pouring_liquid
🫘	beans
🫙	jar
🫚	ginger_root
🫛	pea_pod
🫠	melting_face
🫡	saluting_face
🫢	face_with_open_eyes_and_hand_over_mouth
🫣	face_with_peeking_eye
🫤	face_with_diagonal_mouth
🫥	dotted_line_face
🫦	biting_lip
🫧	bubbles
🫨	shaking_face
🫰	hand_with_index_finger_and_thumb_crossed
🫱	rightwards_hand
🫲	leftwards_hand
🫳	palm_down_hand
🫴	palm_up_hand
🫵	index_pointing_at_the_viewer
🫶	heart_hands
🫷	leftwards_pushing_hand
🫸	rightwards_pushing_hand
‼️	bangbang
⁉️	interrobang
™️	tm
ℹ️	information_source
↔️	left_right_arrow
↕️	arrow_up_down
↖️	arrow_upper_left
↗️	arrow_upper_right
↘️	arrow_lower_right
↙️	arrow_lower_left
↩️	leftwards_arrow_with_hook
↪️	arrow_right_hook
⌚	watch
⌛	hourglass
⌨️	keyboard
⏏️	eject
⏩	fast_forward
⏪	rewind
⏫	arrow_double_up
⏬	arrow_double_down
⏭️	black_right_pointing_double_triangle_with_vertical_bar
⏮️	black_left_pointing_double_triangle_with_vertical_bar
⏯️	black_right_pointing_triangle_with_double_vertical_bar
⏰	alarm_clock
⏱️	stopwatch
⏲️	timer_clock
⏳	hourglass_flowing_sand
⏸️	double_vertical_bar
⏹️	black_square_for_stop
⏺️	black_circle_for_record
Ⓜ️	m
▪️	black_small_square
▫️	white_small_square
▶️	arrow_forward
◀️	arrow_backward
◻️	white_medium_square
◼️	black_medium_square
◽	white_medium_small_square
◾	black_medium_small_square
☀️	sunny
☁️	cloud
☂️	umbrella
☃️	snowman
☄️	comet
☎️	phone telephone
☑️	ballot_box_with_check
☔	umbrella_with_rain_drops
☕	coffee
☘️	shamrock
☝️	point_up
☠️	skull_and_crossbones
☢️	radioactive_sign
☣️	biohazard_sign
☦️	orthodox_cross
☪️	star_and_crescent
☮️	peace_symbol
☯️	yin_yang
☸️	wheel_of_dharma
☹️	white_frowning_face
☺️	relaxed
♀️	female_sign
♂️	male_sign
♈	aries
♉	taurus
♊	gemini
♋	cancer
♌	leo
♍	virgo
♎	libra
♏	scorpius
♐	sagittarius
♑	capricorn
♒	aquarius
♓	pisces
♟️	chess_pawn
♠️	spades
♣️	clubs
♥️	hearts
♦️	diamonds
♨️	hotsprings
♻️	recycle
♾️	infinity
♿	wheelchair
⚒️	hammer_and_pick
⚓	anchor
⚔️	crossed_swords
⚕️	medical_symbol staff_of_aesculapius
⚖️	scales
⚗️	alembic
⚙️	gear
⚛️	atom_symbol
⚜️	fleur_de_lis
⚠️	warning
⚡	zap
⚧️	transgender_symbol
⚪	white_circle
⚫	black_circle
⚰️	coffin
⚱️	funeral_urn
⚽	soccer
⚾	baseball
⛄	snowman_without_snow
⛅	partly_sunny
⛈️	thunder_cloud_and_rain
⛎	ophiuchus
⛏️	pick
⛑️	helmet_with_white_cross
⛓️‍💥	broken_chain
⛓️	chains
⛔	no_entry
⛩️	shinto_shrine
⛪	church
⛰️	mountain
⛱️	umbrella_on_ground
⛲	fountain
⛳	golf
⛴️	ferry
⛵	boat sailboat
⛷️	skier
⛸️	ice_skate
⛹️‍♀️	woman_bouncing_ball
⛹️‍♂️	man_bouncing_ball
⛹️	person_with_ball
⛺	tent
⛽	fuelpump
✂️	scissors
✅	white_check_mark
✈️	airplane
✉️	email envelope
✊	fist
✋	hand raised_hand
✌️	v
✍️	writing_hand
✏️	pencil2
✒️	black_nib
✔️	heavy_check_mark
✖️	heavy_multiplication_x
✝️	latin_cross
✡️	star_of_david
✨	sparkles
✳️	eight_spoked_asterisk
✴️	eight_pointed_black_star
❄️	snowflake
❇️	sparkle
❌	x
❎	negative_squared_cross_mark
❓	question
❔	grey_question
❕	grey_exclamation
❗	exclamation heavy_exclamation_mark
❣️	heavy_heart_exclamation_mark_ornament
❤️‍🔥	heart_on_fire
❤️‍🩹	mending_heart
❤️	heart
➕	heavy_plus_sign
➖	heavy_minus_sign
➗	heavy_division_sign
➡️	arrow_right
➰	curly_loop
➿	loop
⤴️	arrow_heading_up
⤵️	arrow_heading_down
⬅️	arrow_left
⬆️	arrow_up
⬇️	arrow_down
⬛	black_large_square
⬜	white_large_square
⭐	star
⭕	o
〰️	wavy_dash
〽️	part_alternation_mark
㊗️	congratulations
㊙️	secret
]]

local emoji_data_cn = [[
🙂‍↔️	yao_tou#摇头
🙂‍↕️	dian_tou#点头
🐦‍🔥	feng_huang#凤凰
🍋‍🟩	qing_ning#青柠
🍄‍🟫	zong_mo_gu#棕蘑菇
⛓️‍💥	duan_lian#断链
🕴	xuan_fu#悬浮 fu_zai_di_mian_shang_de_xi_zhuang_nan#浮在地面上的西装男
🗺️	di_tu#地图 map#map
🚶‍♂️‍➡️	xiang_you_zou#向右走 wang_you_zou#往右走
🚶‍♀️‍➡️	xiang_you_zou#向右走 wang_you_zou#往右走
🏃‍♂️‍➡️	xiang_you_pao#向右跑 wang_you_pao#往右跑
🏃‍♀️‍➡️	xiang_you_pao#向右跑 wang_you_pao#往右跑
￥	ren_min_bi#人民币 ri_yuan#日元 ri_bi#日币
💴	ri_yuan#日元 ri_yuan_chao_piao#日元钞票
$	mei_yuan#美元 mei_dao#美刀
💵	mei_yuan#美元 mei_yuan_chao_piao#美元钞票 chao_piao#钞票 zhi_bi#纸币
💲	mei_yuan#美元 jin_qian#金钱 cu_mei_yuan_fu_hao#粗美元符号 huo_bi#货币 jia_qian#价钱
HK$	gang_yuan#港元 gang_bi#港币
MOP$	ao_men_yuan#澳门元 ao_men_bi#澳门币 pu_bi#葡币
S$	xin_jia_po_yuan#新加坡元 xin_jia_po_bi#新加坡币
€	ou_yuan#欧元
💶	ou_yuan#欧元 ou_yuan_chao_piao#欧元钞票
£	ying_bang#英镑 bang#镑
💷	ying_bang#英镑 ying_bang_chao_piao#英镑钞票
₿	bi_te_bi#比特币
฿	tai_zhu#泰铢 zhu#铢
₨	lu_bi#卢比
₹	yin_du_lu_bi#印度卢比
😀	xiao_lian#笑脸
😃	lu_chi_xiao#露齿笑
😄	ha#哈 ha_ha#哈哈 kai_xin#开心 xiao#笑 gao_xing#高兴 han_han#憨憨
😊	xiao#笑 wei_xiao#微笑 lian_hong#脸红
😁	xi_xi#嘻嘻 hei_hei#嘿嘿 lie_zui_xiao#咧嘴笑
😆	sha_xiao#傻笑 mi_yan_xiao#眯眼笑 xiao_si#笑死 hao_ye#好耶 xiao_yun#笑晕
😅	han#汗 leng_han#冷汗 mao_han#冒汗 wu_yu#无语 gan_ga#尴尬 ku_xiao#苦笑
😰	han#汗 leng_han#冷汗 mao_han#冒汗 wu_yu#无语 gan_ga#尴尬 jiao_lv#焦虑 mao_han_jiao_lv#冒汗焦虑 jin_zhang#紧张
😓	han#汗 leng_han#冷汗 mao_han#冒汗 wu_yu#无语 gan_ga#尴尬 dao_mei#倒霉
🤣	da_xiao#大笑 xiao_ku#笑哭 xiao_ku_le#笑哭了 xiao_chu_yan_lei#笑出眼泪 da_gun#打滚 da_gun_er#打滚儿 xiao_de_da_gun#笑得打滚 xiao_de_da_gun_er#笑得打滚儿 xiao_de_man_di_da_gun#笑得满地打滚 xiao_de_man_di_da_gun_er#笑得满地打滚儿
😂	da_xiao#大笑 xiao_ku#笑哭 xiao_ku_le#笑哭了 xiao_chu_yan_lei#笑出眼泪
🙂	he_he#呵呵
🙃	he_he#呵呵 dao_lian#倒脸 dian_dao#颠倒 dian_dao_de_lian#颠倒的脸
🫠	xiao_shi#消失 rong_jie#溶解 rong_hua#融化
🫥	xiao_shi#消失 yin_xing#隐形 yin_cang#隐藏 xu_xian_lian#虚线脸 xu_xian_lun_kuo#虚线轮廓
😉	zha_yan#眨眼 mei_yan#媚眼 pao_mei_yan#抛媚眼
😳	lian_hong#脸红 hai_xiu#害羞 xiu_se#羞涩 leng_zhu#愣住
😇	guang_huan#光环 wei_xiao_tian_shi#微笑天使
🥰	xi_xiao_yan_kai#喜笑颜开 ai_xin_huan_rao#爱心环绕 ai_mu#爱慕 mi_lian#迷恋 xian_ru_ai_he#陷入爱河 zhui_ru_ai_he#坠入爱河 xing_fu#幸福
😍	xi_huan#喜欢 hua_chi#花痴
♥️	xi_huan#喜欢 ai_xin#爱心 love#love xin_xing#心形 pu_ke#扑克 hong_tao#红桃 ai#爱 xin#心 hong_xin#红心
🤩	chong_bai#崇拜 hao_chong_bai#好崇拜 hao_chong_bai_o#好崇拜哦 xing_xing_yan#星星眼 yan_mao_xing_xing#眼冒星星
😘	qin_qin#亲亲 qin_ni#亲你 fei_wen#飞吻 qin_yi_ge#亲一个 qin_yi_xia#亲一下 bo_yi_ge#啵一个 bo_er_yi_ge#啵儿一个
😗	jue_zui#噘嘴
🙎‍♂️	jue_zui#噘嘴 jue_zui_de_ren#噘嘴的人
🙎‍♀️	jue_zui#噘嘴 jue_zui_de_ren#噘嘴的人
😚	xiu_se_qin_qin#羞涩亲亲
😙	wei_xiao_qin_qin#微笑亲亲
🥲	han_lei_de_xiao_lian#含泪的笑脸 han_lei_xiao_lian#含泪笑脸 xin_wei#欣慰
😋	hao_chi#好吃 jin_jin_you_wei#津津有味 mei_wei#美味
😛	tu_she#吐舌 tu_she_tou#吐舌头 lve_lve_lve#略略略
😜	tu_she#吐舌 tu_she_tou#吐舌头 lve_lve_lve#略略略 dan_yan_tu_she#单眼吐舌 tiao_pi#调皮 dao_dan#捣蛋
😝	tu_she#吐舌 tu_she_tou#吐舌头 lve_lve_lve#略略略 mi_yan#眯眼 mi_yan_tu_she#眯眼吐舌 kai_wan_xiao#开玩笑 chao_xiao#嘲笑
🤪	sha_gua#傻瓜 sha_gua_lian#傻瓜脸
🤑	fa_cai#发财 cai_mi#财迷 bai_jin#拜金 jian_qian_yan_kai#见钱眼开 qian_yan#钱眼 qian_yan_er#钱眼儿
🤗	bao_bao#抱抱 yong_bao#拥抱
🫂	bao_bao#抱抱 yong_bao#拥抱 jian_ying#剪影 yong_bao_de_ren#拥抱的人 bao_zai_yi_qi#抱在一起
🤭	wu_zui#捂嘴 wu_zui_ba#捂嘴巴 wu_shang_zui_ba#捂上嘴巴 wu_zhu_zui_ba#捂住嘴巴 wu_zhe_zui_ba#捂着嘴巴 wu_zui_xiao#捂嘴笑 wu_zhe_zui_xiao#捂着嘴笑 hao_xiao#好笑
🙊	wu_zui#捂嘴 wu_zui_ba#捂嘴巴 wu_shang_zui_ba#捂上嘴巴 wu_zhu_zui_ba#捂住嘴巴 wu_zhe_zui_ba#捂着嘴巴 bu_shuo#不说 fei_li_wu_yan#非礼勿言
🫢	bu_gan_xiang_xin#不敢相信 unbelievable#unbelievable
🫣	tou_kan#偷看 tou_tou_kan#偷偷看 tou_qiao#偷瞧 tou_tou_qiao#偷偷瞧 dan_yan_tou_kan#单眼偷看 bu_gan_kan#不敢看 wo_bu_gan_kan#我不敢看 hua_mian_tai_mei_wo_bu_gan_kan#画面太美我不敢看 na_hua_mian_tai_mei_wo_bu_gan_kan#那画面太美我不敢看
🤫	xu#嘘 an_jing#安静 an_jing_de_lian#安静的脸 xiao_sheng#小声 xiao_dian_sheng#小点声 xiao_dian_er_sheng#小点儿声 xiao_sheng_dian#小声点 xiao_sheng_dian_er#小声点儿 bie_shuo_hua#别说话
🤔	shen_si_de_lian#深思的脸 shen_si#深思 si_kao#思考 qi_guai#奇怪 qi_guai_le#奇怪了 xiang_yi_xiang#想一想 xiang_xiang#想想 wo_xiang_xiang#我想想 wo_zai_xiang_xiang#我再想想 rong_wo_san_si#容我三思 e#呃 yi_wen#疑问 ke_neng#可能 bu_li_jie#不理解 bu_ming_bai#不明白 yi_huo#疑惑
🫡	jing_li#敬礼 zhi_jing#致敬 zun_jing#尊敬 zun_zhong#尊重 rui_si_bai#瑞思拜 respect#respect
🤐	bi_zui#闭嘴 mi_mi#秘密 bao_mi#保密 shou_mi#守密 bu_shuo#不说 bu_neng_shuo#不能说 bu_yao_shuo#不要说 la_shang_la_lian#拉上拉链 feng_kou#封口 jin_yan#禁言
㊙️	mi_mi#秘密 mi#秘
🤨	tiao_mei#挑眉 mei_mao_shang_tiao#眉毛上挑 mei_mao_shang_tiao_de_lian#眉毛上挑的脸
😐	ping_jing#平静
😑	mian_wu_biao_qing#面无表情
😶	mei_zui#没嘴 mei_you_zui#没有嘴 mei_you_zui_ba#没有嘴巴 chen_mo#沉默
😶‍🌫️	yun_zhong#云中 yun_zhong_de_lian#云中的脸
😏	de_yi#得意 de_yi_di_xiao#得意地笑
😒	yu_men#郁闷 bi_shi#鄙视
🙄	bai_yan#白眼 bai_yan_er#白眼儿 fan_bai_yan#翻白眼 fan_bai_yan_er#翻白眼儿
😬	yao_ya_qie_chi#咬牙切齿 zi_ya_lie_zui#龇牙咧嘴 zi_ya#龇牙 yao_ya#咬牙
😮‍💨	hu_qi#呼气 tan_qi#叹气 ai#唉 wu_nai#无奈
🫁	hu_qi#呼气 fei#肺 xi_qi#吸气 hu_xi_zuo_yong#呼吸作用
🤥	zhang_bi_zi#长鼻子 zhang_bi#长鼻 pi_nuo_cao#匹诺曹 shuo_huang#说谎 sa_huang#撒谎 luan_jiang#乱讲 hu_shuo#胡说 pian_zi#骗子 pian_ren#骗人 pian_ren_bu#骗人布 wu_suo_pu#乌索普
🫨	huang_nao#晃脑 yao_tou_huang_nao#摇头晃脑 chan_dou_de_lian#颤抖的脸 meng_yao_tou#猛摇头 shuai_tou#甩头
😌	ru_shi_zhong_fu#如释重负 song_kou_qi#松口气 song_le_kou_qi#松了口气 song_le_yi_kou_qi#松了一口气 shi_ran#释然
😔	di_tou_you_shang#低头忧伤 xin_shi_chong_chong#心事重重 you_lv#忧虑 you_shang#忧伤
😪	kun#困 kun_kun#困困 kun_le#困了 kun_juan#困倦 kun_fa#困乏 ke_shui#瞌睡 da_ke_shui#打瞌睡
🥱	kun#困 kun_le#困了 kun_juan#困倦 he_qian#呵欠 ha_qian#哈欠 da_ha_qian#打哈欠 da_he_qian#打呵欠
🤤	kou_shui#口水 liu_kou_shui#流口水 chui_xian_san_chi#垂涎三尺
😴	shui_jiao#睡觉 shui_zhao#睡着 shui_zhao_le#睡着了 shui_le#睡了 shui_mian#睡眠
💤	shui_jiao#睡觉 shui_zhao#睡着 shui_zhao_le#睡着了 shui_le#睡了 shui_mian#睡眠 shui_mian_fu_hao#睡眠符号 ZZZ#ZZZ
🛌	shui_jiao#睡觉 shui_jiao_de_ren#睡觉的人 tang_zai_chuang_shang_de_ren#躺在床上的人 chuang_shang_xiu_xi#床上休息
😷	kou_zhao#口罩 dai_kou_zhao#戴口罩 gan_mao#感冒 sheng_bing#生病
🤧	gan_mao#感冒 pen_ti#喷嚏 da_pen_ti#打喷嚏 bi_ti#鼻涕 xing_bi_ti#擤鼻涕 xing_bi_zi#擤鼻子 bi_yan#鼻炎
🤒	ti_wen_ji#体温计 liang_ti_wen#量体温 fa_shao#发烧
🤕	shou_shang#受伤 fu_shang#负伤 beng_dai#绷带 chan_beng_dai#缠绷带 chan_man_beng_dai#缠满绷带
❤️‍🩹	shou_shang#受伤 xiu_fu_shou_shang_de_xin_ling#修复受伤的心灵 zhi_yu_de_xin#治愈的心 shou_shang_de_xin#受伤的心 shou_shang_de_xin_ling#受伤的心灵 xin_shang#心伤
🤢	e_xin#恶心 xiang_tu#想吐 fan_wei#反胃
🤮	tu#吐 tu_le#吐了 ou_tu#呕吐 tu_chu_lai#吐出来
🥵	re#热 hen_re#很热 hao_re#好热 fa_re#发热 lian_fa_shao#脸发烧 la#辣 la_si#辣死 la_si_le#辣死了 chao_la#超辣 chao_ji_la#超级辣 re_si#热死 re_si_le#热死了 bao_la#爆辣
🥶	leng#冷 hen_leng#很冷 bing_leng#冰冷 hao_leng#好冷 leng_bing_bing#冷冰冰 leng_lian#冷脸 dong_jiang#冻僵 dong_jiang_le#冻僵了 man_mian_han_shuang#满面寒霜 leng_si#冷死 leng_si_le#冷死了 dong_si#冻死 dong_si_le#冻死了
🥴	wei_xun#微醺 zui_le#醉了 he_zui#喝醉 he_zui_le#喝醉了 he_duo#喝多 he_duo_le#喝多了 hun_hun_chen_chen#昏昏沉沉 jiu_zui#酒醉
😵	yun#晕 yun_le#晕了 wo_yun#我晕 tou_yun#头晕 yun_tou#晕头 tou_yun_mu_xuan#头晕目眩 yun_tou_zhuan_xiang#晕头转向 tou_yun_yan_hua#头晕眼花
😵‍💫	yun#晕 yun_le#晕了 wo_yun#我晕 tou_yun#头晕 yun_tou#晕头 tou_yun_mu_xuan#头晕目眩 yun_tou_zhuan_xiang#晕头转向 tou_yun_yan_hua#头晕眼花
💫	tou_yun_mu_xuan#头晕目眩
🤯	bao_zha_tou#爆炸头 bao_zha_nao#爆炸脑 tou_bao_zha#头爆炸 nao_zi_bao_zha#脑子爆炸 nao_dai_bao_zha#脑袋爆炸 nao_bao_zha#脑爆炸 da_nao_bao_zha#大脑爆炸 bao_tou#爆头
🤠	niu_zai#牛仔 niu_zai_mao#牛仔帽 niu_zai_mao_lian#牛仔帽脸
🥳	pai_dui#派对 pai_dui_lian#派对脸 qing_zhu#庆祝 kai_pa#开趴 kai_yin_pa#开淫趴 kai_yin_pa#开银趴 party#party kai_party#开party
🎉	pai_dui#派对 qing_zhu#庆祝 gong_xi#恭喜 zhu_he#祝贺 li_bin_hua#礼宾花 pai_dui_li_bin_hua#派对礼宾花
🥸	wei_zhuang#伪装 wei_zhuang_de_lian#伪装的脸 yin_man_shen_fen#隐瞒身份
😎	tai_yang_jing#太阳镜 mo_jing#墨镜 mo_jing_xiao_lian#墨镜笑脸 zi_xin#自信
🕶	tai_yang_jing#太阳镜 mo_jing#墨镜
🤓	shu_dai_zi#书呆子 shu_dai_zi_lian#书呆子脸
🧐	dan_pian_yan_jing#单片眼镜 dai_dan_pian_yan_jing_de_lian#戴单片眼镜的脸 tan_jiu#探究 yan_jiu#研究
😕	kun_rao#困扰 bu_xie#不屑
🫤	pie_zui#撇嘴 bu_que_ding#不确定
😟	dan_xin#担心 dan_you#担忧
🙁	bu_kai_xin#不开心 bu_gao_xing#不高兴 bu_man#不满 wei_wei_bu_man#微微不满 xin_qing_bu_hao#心情不好 bu_yue#不悦 yi_lian_bu_yue#一脸不悦
😮	chi_jing#吃惊 jing_ya#惊讶 o#哦
😯	chi_jing#吃惊 jing_ya#惊讶 hao_qi#好奇
😲	chi_jing#吃惊 jing_ya#惊讶 zhen_jing#震惊 a#啊
😦	chi_jing#吃惊 jing_ya#惊讶 zhen_jing#震惊 a#啊 mu_deng_kou_dai#目瞪口呆
😧	chi_jing#吃惊 jing_ya#惊讶 zhen_jing#震惊 a#啊
🥺	ke_lian#可怜 ke_lian_xi_xi#可怜兮兮 hao_ma#好嘛 qiu_ni_le#求你了 qiu_qiu_ni#求求你 qiu_qiu_ni_le#求求你了
🙏	qiu_ni_le#求你了 qiu_qiu_ni#求求你 qiu_qiu_ni_le#求求你了 shuang_shou_he_shi#双手合十 he_shi#合十 he_zhang#合掌 bai_tuo#拜托 qi_qiu#祈求 qi_dao#祈祷 gan_xie#感谢 xie_xie#谢谢 chao_du#超度 e_mi_tuo_fo#阿弥陀佛
🥹	ren_zhu_lei_shui#忍住泪水 qiang_ren_lei_shui#强忍泪水 yao_ku_le#要哭了 han_lei#含泪 wei_qu#委屈
😨	pa#怕 ke_pa#可怕 hai_pa#害怕 kong_ju#恐惧
😱	pa#怕 ke_pa#可怕 hai_pa#害怕 kong_ju#恐惧 xia_si#吓死 xia_si_le#吓死了 xia_ren#吓人 jian_jiao#尖叫 kong_bu#恐怖 kong_ju_jian_jiao#恐惧尖叫 jing_sheng_jian_jiao#惊声尖叫
😩	jiao_lv#焦虑 pi_juan#疲倦 pi_lao#疲劳 pi_bei#疲惫 jiao_zao#焦躁
😥	shi_wang_dan_ru_shi_zhong_fu#失望但如释重负 nan_guo_dan_shi_ran#难过但释然
😢	ku#哭 ku_le#哭了 ku_qi#哭泣 liu_lei#流泪 liu_yan_lei#流眼泪
😭	ku#哭 ku_le#哭了 ku_qi#哭泣 liu_lei#流泪 liu_yan_lei#流眼泪 da_ku#大哭 fang_sheng_da_ku#放声大哭 tong_ku#痛哭
😖	jiao_tou_lan_e#焦头烂额 jiu_jie#纠结
😣	ren_nai#忍耐
😞	shi_wang#失望 nan_guo#难过
😫	zhua_kuang#抓狂
😤	ao_man#傲慢 zhi_gao_qi_ang#趾高气昂 bi_zi_mao_qi#鼻子冒气 heng#哼 heng_heng#哼哼
😡	nu#怒 fen_nu#愤怒 sheng_qi#生气 qi_ren#气人 angry#angry fa_huo#发火 fa_biao#发飙 nu_huo_zhong_shao#怒火中烧 fan_si#烦死 fan_si_ren#烦死人 fan_si_le#烦死了 fan_si_la#烦死啦
😠	nu#怒 fen_nu#愤怒 sheng_qi#生气 qi_ren#气人 angry#angry wei_nu#微怒
💢	nu#怒 fen_nu#愤怒 sheng_qi#生气 angry#angry huo_da#火大 qing_jin#青筋 sheng_qi_fu_hao#生气符号
🤬	ma_ren#骂人 zhou_ma#咒骂 zang_hua#脏话 shuo_zang_hua#说脏话 ni_ma_si_le#你妈死了 NMSL#NMSL cao_ni_ma#肏你妈 cao_ni_ma#操你妈 sha_bi#傻逼 chu_kou_cheng_zang#出口成脏
😈	e_mo#恶魔 mo_gui#魔鬼 wei_xiao_e_mo#微笑恶魔 e_mo_wei_xiao#恶魔微笑 wei_xiao_de_e_mo#微笑的恶魔
👿	e_mo#恶魔 mo_gui#魔鬼 sheng_qi_e_mo#生气恶魔 e_mo_sheng_qi#恶魔生气 sheng_qi_de_e_mo#生气的恶魔
💀	tou_gu#头骨 ku_lou#骷髅 ku_lou_tou#骷髅头 si_wang#死亡
☠️	tou_gu#头骨 ku_lou#骷髅 ku_lou_tou#骷髅头 si_wang#死亡
💩	shi#屎 la_shi#拉屎 da_bian#大便 la_da_bian#拉大便 bian_bian#便便 la_bian_bian#拉便便 ba_ba#粑粑 la_ba_ba#拉粑粑
🤡	xiao_chou#小丑 xiao_chou_lian#小丑脸
👹	guai_wu#怪物
👺	yao_guai#妖怪
👻	gui#鬼 gui_hun#鬼魂 you_ling#幽灵
👽	wai_xing_ren#外星人
👾	guai_shou#怪兽 yi_xing_guai_shou#异形怪兽 wai_xing_guai_wu#外星怪物
🤖	ji_qi_ren#机器人
😺	kai_xin_mao#开心猫 kai_xin_de_mao#开心的猫 kai_xin_mao_lian#开心猫脸
😸	wei_xiao_mao#微笑猫 wei_xiao_de_mao#微笑的猫 wei_xiao_mao_lian#微笑猫脸
😹	xiao_zhong_dai_lei#笑中带泪 xi_ji_er_qi#喜极而泣 xiao_chu_yan_lei_de_mao#笑出眼泪的猫
😻	hua_chi_mao#花痴猫 hua_chi_de_mao#花痴的猫 hua_chi_mao_lian#花痴猫脸
😼	de_yi_mao#得意猫 de_yi_de_mao#得意的猫 de_yi_mao_lian#得意猫脸
😽	qin_qin_mao#亲亲猫 qin_qin_de_mao#亲亲的猫 qin_qin_mao_lian#亲亲猫脸
🙀	kong_ju_mao#恐惧猫 kong_ju_de_mao#恐惧的猫 kong_ju_mao_lian#恐惧猫脸 hai_pa_mao#害怕猫 hai_pa_de_mao#害怕的猫 hai_pa_mao_lian#害怕猫脸
😿	ku_qi_mao#哭泣猫 ku_qi_de_mao#哭泣的猫 ku_qi_mao_lian#哭泣猫脸
😾	sheng_qi_mao#生气猫 sheng_qi_de_mao#生气的猫 sheng_qi_mao_lian#生气猫脸 jue_zui_mao#噘嘴猫 jue_zui_de_mao#噘嘴的猫 jue_zui_mao_lian#噘嘴猫脸
🙈	fei_li_wu_shi#非礼勿视 bu_kan#不看 meng_yan#蒙眼 meng_yan_jing#蒙眼睛 meng_zhu_yan_jing#蒙住眼睛 wo_bu_kan#我不看
🙉	fei_li_wu_ting#非礼勿听 bu_ting#不听 du_er#堵耳 du_er_duo#堵耳朵 du_shang_er_duo#堵上耳朵 du_zhu_er_duo#堵住耳朵 du_zhe_er_duo#堵着耳朵 wu_er#捂耳 wu_er_duo#捂耳朵 wu_shang_er_duo#捂上耳朵 wu_zhu_er_duo#捂住耳朵 wu_zhe_er_duo#捂着耳朵 wo_bu_ting#我不听
💌	qing_shu#情书
💘	yi_jian_chuan_xin#一箭穿心 qiu_bi_te#丘比特 xin_zhong_jian_le#心中箭了
💝	ai_de_li_wu#爱的礼物 xi_you_duan_dai_de_xin#系有缎带的心 shi_yi_si_dai_de_xin#饰以丝带的心 song_ni_yi_ke_xin#送你一颗心
💖	shan_liang_de_xin#闪亮的心 ai_xin#爱心
💗	peng_zhang_de_xin#膨胀的心 peng_zhang_de_ai_xin#膨胀的爱心 bo_dong_de_xin#搏动的心
💓	xin_dong#心动 xin_tiao#心跳 ai_qing#爱情 love#love
💕	ai_qing#爱情 love#love liang_ke_xin#两颗心 fen_se_de_xin#粉色的心
👩‍❤️‍👨	ai_qing#爱情 love#love lian_ai#恋爱 tan_lian_ai#谈恋爱 xiang_ai#相爱
💞	xuan_zhuan_de_xin#旋转的心 wu_dong_de_xin#舞动的心 xin_lian_xin#心连心
🩷	fen_se_de_xin#粉色的心 fen_xin#粉心 fen_se_xin#粉色心 fen_hong_xin#粉红心
💟	xin_xing#心形 xin_xing_zhuang_shi#心形装饰
❣️	xin_tan_hao#心叹号
💔	shang_xin#伤心 xin_sui#心碎 shi_lian#失恋
❤️‍🔥	huo_shang_zhi_xin#火上之心 xin_huo#心火 ran_shao_de_xin#燃烧的心 xin_zai_ran_shao#心在燃烧 xin_zai_zhao_huo#心在着火 ai_huo#爱火
🧡	cheng_xin#橙心 cheng_se_xin#橙色心 cheng_se_de_xin#橙色的心 ju_xin#橘心 ju_se_xin#橘色心 ju_se_de_xin#橘色的心
💛	huang_xin#黄心 huang_se_xin#黄色心 huang_se_de_xin#黄色的心
💚	lv_xin#绿心 lv_se_xin#绿色心 lv_se_de_xin#绿色的心
💙	lan_xin#蓝心 lan_se_xin#蓝色心 lan_se_de_xin#蓝色的心
🩵	lan_xin#蓝心 lan_se_xin#蓝色心 lan_se_de_xin#蓝色的心 dan_lan_xin#淡蓝心 dan_lan_se_xin#淡蓝色心 dan_lan_se_de_xin#淡蓝色的心
💜	zi_xin#紫心 zi_se_xin#紫色心 zi_se_de_xin#紫色的心
🤎	zong_xin#棕心 zong_se_xin#棕色心 zong_se_de_xin#棕色的心
🖤	hei_xin#黑心 hei_se_xin#黑色心 hei_se_de_xin#黑色的心
🩶	hui_xin#灰心 hui_se_xin#灰色心 hui_se_de_xin#灰色的心
🤍	bai_xin#白心 bai_se_xin#白色心 bai_se_de_xin#白色的心
💋	qin#亲 wen#吻 qin_wen#亲吻 qin_zui#亲嘴 chun#唇 chun_yin#唇印 hong_chun#红唇 wen_hen#吻痕 kiss#kiss me_me#么么 me_me_da#么么哒
👄	chun#唇 hong_chun#红唇 kou#口 zui#嘴 zui_chun#嘴唇 zui_ba#嘴巴
💯	yi_bai#一百 yi_bai_fen#一百分 man_fen#满分
💥	bao_zha#爆炸
💦	shui_zhu#水珠 shui_di#水滴
💧	shui_zhu#水珠 shui_di#水滴 han_di#汗滴 yi_di_shui#一滴水 yi_di#一滴
💨	zhen_feng#阵风 wei_qi#尾气 qi_che_wei_qi#汽车尾气
🕳	keng#坑 dong#洞 xia_shui_dao#下水道
💬	dui_hua_qi_pao#对话气泡 dui_hua_kuang#对话框
🗨	dui_hua_qi_pao#对话气泡 dui_hua_kuang#对话框 chao_zuo_de_dui_hua_qi_pao#朝左的对话气泡
🗯	dui_hua_qi_pao#对话气泡 dui_hua_kuang#对话框 fen_nu_dui_hua_qi_pao#愤怒对话气泡 fen_nu_dui_hua_kuang#愤怒对话框
💭	dui_hua_kuang#对话框 si_kao_qi_pao#思考气泡 nei_xin_huo_dong_qi_pao#内心活动气泡
👁️‍🗨️	zheng_ren#证人 wo_shi_zheng_ren#我是证人
👋	hui_shou#挥手 bai_shou#摆手 ni_hao#你好 zai_jian#再见 bai_bai#拜拜
🤚	shou_bei#手背
🖐	shou_zhi_zhang_kai#手指张开 shou_zhi_zhang_kai_de_shou#手指张开的手
✋	ju_qi_de_shou#举起的手 shou_zhang#手掌 ji_zhang#击掌 shou#手
🖖	wa_ken_ju_shou_li#瓦肯举手礼 wa_ken#瓦肯 si_bo_ke#斯波克 xing_ji_mi_hang#星际迷航
🫱	you_shou#右手 xiang_you_de_shou#向右的手 xiang_you_shen_de_shou#向右伸的手 chao_you#朝右
🫸	you_shou#右手 tui_shou#推手 you_tui#右推 xiang_you_tui#向右推 xiang_you_tui_shou#向右推手 xiang_you_tui_de_shou#向右推的手
🫲	zuo_shou#左手 xiang_zuo_de_shou#向左的手 xiang_zuo_shen_de_shou#向左伸的手 chao_zuo#朝左
🫷	zuo_shou#左手 zuo_tui#左推 xiang_zuo_tui#向左推 tui_shou#推手 xiang_zuo_tui_shou#向左推手 xiang_zuo_tui_de_shou#向左推的手
🫳	shou_zhang_chao_xia#手掌朝下 zhang_xin_chao_xia#掌心朝下 chao_xia#朝下 fang_shou#放手
🫴	shou_zhang_chao_shang#手掌朝上 zhang_xin_chao_shang#掌心朝上 chao_shang#朝上 shen_shou#伸手 tai_qi#抬起
👌	OK#OK hao#好 hao_de#好的 hao_da#好哒 mei_wen_ti#没问题
🙆‍♂️	OK#OK hao#好 hao_de#好的 tong_yi#同意 ke_yi#可以
🙆‍♀️	OK#OK hao#好 hao_de#好的 tong_yi#同意 ke_yi#可以
🆗	OK#OK
🤌	shou_zhi_nie_he#手指捏和 nie_he#捏合 lan_hua_zhi#兰花指 nie_shou_zhi#捏手指 shou_zhi#手指
🤏	yi_dian#一点 yi_dian_er#一点儿 yi_dian_dian#一点点 shao_liang#少量 shao_xu#少许
🕐	yi_dian#一点 yi_dian_zhong#一点钟
✌️	he_ping_shou_shi#和平手势 ye#耶 o_ye#哦耶 cheng_gong#成功 sheng_li#胜利 ying_le#赢了 jian_dao_shou#剪刀手 ying_la#赢啦 ying_ge#赢咯 liang_ge#两个 di_er#第二
🤞	shou_zhi_jiao_cha#手指交叉 jiao_cha_de_shou_zhi#交叉的手指
🫰	shi_zhi_he_mu_zhi_jiao_cha_de_shou#食指和拇指交叉的手 xiang_zhi#响指 da_xiang_zhi#打响指 bi_xin#比心 bi_xin_shou_shi#比心手势
🫶	bi_xin#比心 bi_xin_shou_shi#比心手势 zuo_cheng_xin_xing_de_shuang_shou#做成心形的双手
🤟	ai_ni_shou_shi#爱你手势 ai_ni_de_shou_shi#爱你的手势 ai_ni#爱你 wo_ai_ni#我爱你
🤘	yao_gun#摇滚 yao_gun_shou_shi#摇滚手势 jin_shu_li#金属礼
🤙	da_dian_hua#打电话 hui_dian_hua#回电话 da_gei_wo#打给我 gei_wo_da_dian_hua#给我打电话 da_dian_hua_gei_wo#打电话给我 liu_liu_liu#六六六
👈	fan_shou_shi_zhi_xiang_zuo_zhi#反手食指向左指 xiang_zuo_zhi#向左指 xiang_zuo#向左 wang_zuo#往左 wang_zuo_zhi#往左指 zuo_mian#左面 zuo_bian#左边
👉	fan_shou_shi_zhi_xiang_you_zhi#反手食指向右指 xiang_you_zhi#向右指 xiang_you#向右 wang_you#往右 wang_you_zhi#往右指 you_mian#右面 you_bian#右边
👆	fan_shou_shi_zhi_xiang_shang_zhi#反手食指向上指 xiang_shang_zhi#向上指 xiang_shang#向上 wang_shang#往上 wang_shang_zhi#往上指 shang_mian#上面 shang_bian#上边
👇	fan_shou_shi_zhi_xiang_xia_zhi#反手食指向下指 xiang_xia_zhi#向下指 xiang_xia#向下 wang_xia#往下 wang_xia_zhi#往下指 xia_mian#下面 xia_bian#下边
🖕	zhong_zhi#中指 shu_zhong_zhi#竖中指 bi_zhong_zhi#比中指 ju_zhong_zhi#举中指
☝️	shi_zhi#食指 yi_ge#一个 di_yi#第一
🫵	shi_zhi_zhi_xiang_guan_cha_zhe#食指指向观察者 zhi_xiang_guan_cha_zhe_de_shi_zhi#指向观察者的食指 ni_zi_ji#你自己 jiu_shi_ni#就是你 zhi_zhe#指着 zhi_zhe_ni#指着你 zhi_ni#指你 zhi_wo#指我 zhi_ren#指人
👍	mu_zhi#拇指 da_mu_zhi#大拇指 da_mu_zhi_xiang_shang#大拇指向上 mu_zhi_xiang_shang#拇指向上 da_mu_zhi_chao_shang#大拇指朝上 mu_zhi_chao_shang#拇指朝上 qiang#强 hao_qiang#好强 bang#棒 bang_a#棒啊 zhen_bang#真棒 hao_bang#好棒 hen_bang#很棒 te_bang#特棒 fei_chang_bang#非常棒 bang_bang#棒棒 bang_bang_de#棒棒的 bang_bang_da#棒棒哒 tai_bang#太棒 tai_bang_le#太棒了 tai_bang_la#太棒啦 gan_de_hao#干得好 hen_hao#很好 bu_cuo#不错 biao_yang#表扬 niu_bi#牛逼 li_hai#厉害 zan#赞 dian_zan#点赞 jue_le#绝了
👎	mu_zhi#拇指 da_mu_zhi#大拇指 mu_zhi_xiang_shang#拇指向上 da_mu_zhi_xiang_xia#大拇指向下 da_mu_zhi_chao_xia#大拇指朝下 mu_zhi_chao_xia#拇指朝下 bu_hao#不好 bu_qiang#不强 bu_bang#不棒 hen_cha#很差 tai_cha#太差 tai_cha_le#太差了 tai_cha_la#太差啦 cha_jin#差劲
✊	ju_qi_quan_tou#举起拳头 ju_qi_de_quan_tou#举起的拳头 wo_quan#握拳
👊	wo_jin_de_quan_tou#握紧的拳头 quan_tou#拳头 chu_quan#出拳 da_ji#打击 zhong_quan_chu_ji#重拳出击 da_ni#打你 zou_ni#揍你 gan_ni#干你
🤛	zuo_xiang_quan#左向拳 chao_zuo_de_quan_tou#朝左的拳头 you_gou_quan#右钩拳 you_quan#右拳
🤜	you_xiang_quan#右向拳 chao_you_de_quan_tou#朝右的拳头 zuo_gou_quan#左钩拳 zuo_quan#左拳
👏	gu_zhang#鼓掌 pai_shou#拍手 pai_zhang#拍掌 pa_pa_pa#啪啪啪
🙌	yang_shou_huan_hu#扬手欢呼 ju_shuang_shou#举双手
👐	shuang_shou_zhang_kai#双手张开 zhang_kai_shuang_shou#张开双手
🤲	shuang_shou_shou_zhang_xiang_shang#双手手掌向上 zhang_xin_xiang_shang_tuo_qi#掌心向上托起 shuang_shou#双手 peng_zhe#捧着
🤝	wo_shou#握手 he_zuo#合作 he_zuo_yu_kuai#合作愉快 gao_ding#搞定
✍️	xie_zi#写字 shou_xie#手写
💅	zhi_jia_you#指甲油 tu_zhi_jia_you#涂指甲油 mei_jia#美甲 zuo_zhi_jia#做指甲 zuo_mei_jia#做美甲
🤳	zi_pai#自拍
💪	er_tou_ji#二头肌 gong_er_tou_ji#肱二头肌 gong_er_tou#肱二头 qiang_zhuang#强壮 ji_rou#肌肉 xiu_ji_rou#秀肌肉 jian_shen#健身 jia_you#加油 fen_dou#奋斗 nu_li#努力
⛽	jia_you#加油 jia_you_zhan#加油站 shi_you#石油
🦾	yi_zhi#义肢 yi_ti#义体 sai_bo_peng_ke#赛博朋克 ji_xie_shou_bi#机械手臂 ji_xie_bi#机械臂
🦿	yi_zhi#义肢 yi_ti#义体 sai_bo_peng_ke#赛博朋克 ji_xie_tui#机械腿
🦵	tui#腿 tui_er#腿儿 da_tui#大腿 lian_tui#练腿
🦶	jiao#脚 zu#足 ti#踢 cai#踩 jiao_ya#脚丫 jiao_ya_zi#脚丫子
👂	ting#听 er#耳 er_duo#耳朵
🦻	zhu_ting_qi#助听器 ting_li_zhang_ai#听力障碍 dai_zhu_ting_qi_de_er_duo#戴助听器的耳朵
👃	xiu#嗅 wen#闻 bi#鼻 bi_zi#鼻子 hu_xi#呼吸
🧠	da_nao#大脑 tou_nao#头脑 nao_hua#脑花 nao_zi#脑子 nao#脑
🫀	xin_zang#心脏 xin_zang_qi_guan#心脏器官
🦷	ya#牙 ya_chi#牙齿 ya_ya#牙牙
🦴	gu_tou#骨头 gu_ge#骨骼
👀	yan#眼 yan_jing#眼睛 zhu_shi#注视 guan_cha#观察 kan#看 kan_kan#看看
👁	yan#眼 yan_jing#眼睛 dan_yan#单眼 yi_zhi_yan#一只眼 yi_zhi_yan_jing#一只眼睛 tong_kong#瞳孔
👅	she#舌 she_tou#舌头
🫦	yao_zui_chun#咬嘴唇 yao_zhu_zui_chun#咬住嘴唇 tiao_qing#调情 qing_diao#情调 you_huo#诱惑
👶	ying_er#婴儿 bao_bao#宝宝 xiao_bao_bei#小宝贝 xiao_bao_bei_er#小宝贝儿 baby#baby guai_bao#乖宝 guai_bao_bao#乖宝宝
🚼	ying_er#婴儿 bao_bao#宝宝 baby#baby ying_er_fu_hao#婴儿符号 ying_er_biao_zhi#婴儿标志
🧒	er_tong#儿童 xiao_hai#小孩 xiao_hai_er#小孩儿 hai_zi#孩子 xiao_hai_zi#小孩子 xiao_peng_you#小朋友 xiao_pen_you#小盆友
👦	nan_hai#男孩 xiao_nan_hai#小男孩 er_zi#儿子
👧	nv_hai#女孩 xiao_nv_hai#小女孩 nv_er#女儿
👱	jin_fa#金发 jin_se_tou_fa#金色头发 jin_fa_nv#金发女 jin_fa_nv_zi#金发女子 jin_fa_nv_ren#金发女人
👱‍♀️	jin_fa#金发 jin_se_tou_fa#金色头发 jin_fa_nv#金发女 jin_fa_nv_zi#金发女子 jin_fa_nv_ren#金发女人
👱‍♂️	jin_fa#金发 jin_se_tou_fa#金色头发 jin_fa_nan#金发男 jin_fa_nan_zi#金发男子 jin_fa_nan_ren#金发男人
👨	nan_ren#男人 cheng_nian_nan_ren#成年男人 cheng_nian_nan_xing#成年男性 ba_ba#爸爸 fu_qin#父亲 lao_die#老爹
🧔	you_hu_xu_de_ren#有胡须的人 you_hu_zi_de_ren#有胡子的人 luo_sai_hu#络腮胡 hu_zi#胡子 hu_xu#胡须 da_shu#大叔
🧔‍♀️	zhang_hu_zi_de_nv_ren#长胡子的女人 hu_zi_nv#胡子女
👨‍🦰	hong_fa#红发 hong_se_tou_fa#红色头发 hong_fa_nan#红发男 hong_fa_nan_zi#红发男子 hong_fa_nan_ren#红发男人
👩‍🦰	hong_fa#红发 hong_se_tou_fa#红色头发 hong_tou_fa#红头发 hong_fa_nv#红发女 hong_fa_nv_zi#红发女子 hong_fa_nv_ren#红发女人
🦰	hong_fa#红发 hong_se_tou_fa#红色头发 hong_tou_fa#红头发 chi_fa#赤发
👨‍🦱	hong_fa_nan#红发男 hong_fa_nan_zi#红发男子 hong_fa_nan_ren#红发男人 juan_fa#卷发
👩‍🦱	juan_fa#卷发 juan_fa_nv#卷发女 juan_fa_nv_zi#卷发女子 juan_fa_nv_ren#卷发女人
🦱	juan_fa#卷发
👨‍🦳	bai_fa#白发 bai_se_tou_fa#白色头发 bai_fa_nan#白发男 bai_fa_nan_zi#白发男子 bai_fa_nan_ren#白发男人
👩‍🦳	bai_fa#白发 bai_se_tou_fa#白色头发 bai_fa_nv#白发女 bai_fa_nv_zi#白发女子 bai_fa_nv_ren#白发女人
🦳	bai_fa#白发
👨‍🦲	guang_tou#光头 guang_tou_nan#光头男 guang_tou_nan_zi#光头男子 guang_tou_nan_ren#光头男人 tu_ding#秃顶 tu_tou#秃头 tou_tu#头秃 tuo_fa#脱发 he_shang#和尚
👩‍🦲	guang_tou#光头 tu_ding#秃顶 tu_tou#秃头 tou_tu#头秃 tuo_fa#脱发 guang_tou_nv#光头女 guang_tou_nv_zi#光头女子 guang_tou_nv_ren#光头女人 ni_gu#尼姑
🦲	guang_tou#光头 tu_ding#秃顶 tu_tou#秃头 tou_tu#头秃 tuo_fa#脱发
👩	nv_ren#女人 cheng_nian_nv_ren#成年女人 cheng_nian_nv_xing#成年女性 ma_ma#妈妈 mu_qin#母亲 lao_ma#老妈
👴	lao_ren#老人 lao_tou#老头 lao_tou_er#老头儿 lao_ye_ye#老爷爷 ye_ye#爷爷 lao_ye#姥爷 wai_gong#外公 zu_fu#祖父
👵	lao_ren#老人 lao_tai_tai#老太太 lao_nai_nai#老奶奶 nai_nai#奶奶 lao_lao#姥姥 wai_po#外婆 zu_mu#祖母
🙍‍♂️	zhou_zhe_mei_tou#皱着眉头 zhou_zhe_mei_tou_de_ren#皱着眉头的人
🙍‍♀️	zhou_zhe_mei_tou#皱着眉头 zhou_zhe_mei_tou_de_ren#皱着眉头的人
🙅‍♂️	jin_zhi_shou_shi#禁止手势 bu#不 bu_xing#不行 fan_dui#反对 ju_jue#拒绝 bu_tong_yi#不同意 bu_ke_yi#不可以 da_mie#打咩
🙅‍♀️	jin_zhi_shou_shi#禁止手势 bu#不 bu_xing#不行 fan_dui#反对 ju_jue#拒绝 bu_tong_yi#不同意 bu_ke_yi#不可以 da_mie#打咩
🉑	ke_yi#可以 ke#可
💁‍♂️	fu_wu_yuan#服务员 fu_wu_sheng#服务生 nan_fu_wu_yuan#男服务员 nan_fu_wu_sheng#男服务生
💁‍♀️	fu_wu_yuan#服务员 fu_wu_sheng#服务生 nv_fu_wu_yuan#女服务员 nv_fu_wu_sheng#女服务生
🙋‍♂️	ju_shou#举手 wo_zhi_dao#我知道 zhe_ge_wo_zhi_dao#这个我知道
🙋‍♀️	ju_shou#举手 wo_zhi_dao#我知道 zhe_ge_wo_zhi_dao#这个我知道
🧏‍♂️	shi_cong_zhe#失聪者 shi_cong#失聪 er_long#耳聋 long_zi#聋子
🧏‍♀️	shi_cong_zhe#失聪者 shi_cong#失聪 er_long#耳聋 long_zi#聋子
🙇‍♂️	bu_hao_yi_si#不好意思 dui_bu_qi#对不起 dao_qian#道歉 ju_gong#鞠躬 gui_qiu#跪求
🙇‍♀️	bu_hao_yi_si#不好意思 dui_bu_qi#对不起 dao_qian#道歉 ju_gong#鞠躬 gui_qiu#跪求
🤦‍♂️	wu_lian#捂脸 shou_zhang_wu_lian#手掌捂脸 fu_e#扶额 fu_le#服了 wo_fu_le#我服了 fu_le_ni_le#服了你了 wo_fu_le_ni#我服了你 wo_fu_le_ni_le#我服了你了
🤦‍♀️	wu_lian#捂脸 shou_zhang_wu_lian#手掌捂脸 fu_e#扶额 fu_le#服了 wo_fu_le#我服了 fu_le_ni_le#服了你了 wo_fu_le_ni#我服了你 wo_fu_le_ni_le#我服了你了
🤷‍♂️	song_jian#耸肩 bu_guan_xin#不关心 bu_zhi_dao#不知道 shui_zhi_dao#谁知道 shui_zhi_dao_ne#谁知道呢 yu_wo_wu_guan#与我无关
🤷‍♀️	song_jian#耸肩 bu_guan_xin#不关心 bu_zhi_dao#不知道 shui_zhi_dao#谁知道 shui_zhi_dao_ne#谁知道呢 yu_wo_wu_guan#与我无关
👨‍⚕️	yi_hu_ren_yuan#医护人员 yi_sheng#医生 nan_yi_hu_ren_yuan#男医护人员 nan_yi_sheng#男医生 dai_fu#大夫 nan_dai_fu#男大夫
👩‍⚕️	yi_hu_ren_yuan#医护人员 yi_sheng#医生 dai_fu#大夫 nv_yi_hu_ren_yuan#女医护人员 nv_yi_sheng#女医生 nv_dai_fu#女大夫
👨‍🎓	xue_sheng#学生 da_xue_sheng#大学生 nan_xue_sheng#男学生 bi_ye#毕业 ben_ke_sheng#本科生
👩‍🎓	xue_sheng#学生 da_xue_sheng#大学生 bi_ye#毕业 ben_ke_sheng#本科生 nv_xue_sheng#女学生
👨‍🏫	lao_shi#老师 jiao_shi#教师 nan_lao_shi#男老师 nan_jiao_shi#男教师
👩‍🏫	lao_shi#老师 jiao_shi#教师 nv_lao_shi#女老师 nv_jiao_shi#女教师
👨‍⚖️	fa_guan#法官 nan_fa_guan#男法官
👩‍⚖️	fa_guan#法官 nv_fa_guan#女法官
👨‍🌾	nong_min#农民 nong_fu#农夫
👩‍🌾	nong_min#农民 nong_fu#农妇
👨‍🍳	zuo_fan#做饭 chu_shi#厨师 da_chu#大厨 nan_chu_shi#男厨师 xia_chu#下厨
👩‍🍳	zuo_fan#做饭 chu_shi#厨师 da_chu#大厨 xia_chu#下厨 nv_chu_shi#女厨师
👨‍🔧	ji_gong#技工 shui_guan_gong#水管工 dian_gong#电工 xiu_li_gong#修理工 nan_ji_gong#男技工 nan_shui_guan_gong#男水管工 nan_dian_gong#男电工 nan_xiu_li_gong#男修理工
👩‍🔧	ji_gong#技工 shui_guan_gong#水管工 dian_gong#电工 xiu_li_gong#修理工 nv_ji_gong#女技工 nv_shui_guan_gong#女水管工 nv_dian_gong#女电工 nv_xiu_li_gong#女修理工
👨‍🏭	gong_chang_gong_ren#工厂工人 nan_gong_chang_gong_ren#男工厂工人
👩‍🏭	gong_chang_gong_ren#工厂工人 nv_gong_chang_gong_ren#女工厂工人
👨‍💼	ban_gong_shi_zhi_yuan#办公室职员 zhi_yuan#职员 bai_ling#白领 nan_ban_gong_shi_zhi_yuan#男办公室职员 nan_zhi_yuan#男职员 nan_bai_ling#男白领
👩‍💼	ban_gong_shi_zhi_yuan#办公室职员 zhi_yuan#职员 bai_ling#白领 nv_ban_gong_shi_zhi_yuan#女办公室职员 nv_zhi_yuan#女职员 nv_bai_ling#女白领
👨‍🔬	ke_xue_jia#科学家 hua_xue_jia#化学家 nan_ke_xue_jia#男科学家 nan_hua_xue_jia#男化学家
👩‍🔬	ke_xue_jia#科学家 hua_xue_jia#化学家 nv_ke_xue_jia#女科学家 nv_hua_xue_jia#女化学家
👨‍💻	cheng_xu_yuan#程序员 ma_nong#码农 ma_chu#码畜 kai_fa_ren_yuan#开发人员 ji_shu_yuan#技术员 nan_cheng_xu_yuan#男程序员 nan_ma_nong#男码农 nan_ma_chu#男码畜 nan_kai_fa_ren_yuan#男开发人员 nan_ji_shu_yuan#男技术员
👩‍💻	cheng_xu_yuan#程序员 ma_nong#码农 ma_chu#码畜 kai_fa_ren_yuan#开发人员 ji_shu_yuan#技术员 nv_cheng_xu_yuan#女程序员 nv_ma_nong#女码农 nv_ma_chu#女码畜 nv_kai_fa_ren_yuan#女开发人员 nv_ji_shu_yuan#女技术员
👨‍🎤	ge_shou#歌手 nan_ge_shou#男歌手 yao_gun_ge_shou#摇滚歌手 yao_gun_nan_ge_shou#摇滚男歌手 nan_yao_gun_ge_shou#男摇滚歌手 peng_ke#朋克 zhong_jin_shu#重金属
👩‍🎤	ge_shou#歌手 yao_gun_ge_shou#摇滚歌手 peng_ke#朋克 zhong_jin_shu#重金属 nv_ge_shou#女歌手 yao_gun_nv_ge_shou#摇滚女歌手 nv_yao_gun_ge_shou#女摇滚歌手
👨‍🎨	yi_shu_jia#艺术家 nan_yi_shu_jia#男艺术家 hua_jia#画家 nan_hua_jia#男画家 man_hua_jia#漫画家 nan_man_hua_jia#男漫画家
👩‍🎨	yi_shu_jia#艺术家 hua_jia#画家 man_hua_jia#漫画家 nv_yi_shu_jia#女艺术家 nv_hua_jia#女画家 nv_man_hua_jia#女漫画家
👨‍✈️	fei_xing_yuan#飞行员 nan_fei_xing_yuan#男飞行员
👩‍✈️	fei_xing_yuan#飞行员 nv_fei_xing_yuan#女飞行员
👨‍🚀	yu_hang_yuan#宇航员 nan_yu_hang_yuan#男宇航员
👩‍🚀	yu_hang_yuan#宇航员 nv_yu_hang_yuan#女宇航员
👨‍🚒	xiao_fang_yuan#消防员 nan_xiao_fang_yuan#男消防员
👩‍🚒	xiao_fang_yuan#消防员 nv_xiao_fang_yuan#女消防员
👮‍♂️	jing_guan#警官 jing_cha#警察 nan_jing_guan#男警官 nan_jing_cha#男警察
👮‍♀️	jing_guan#警官 jing_cha#警察 nv_jing_guan#女警官 nv_jing_cha#女警察
🕵️‍♂️	zhen_tan#侦探 nan_zhen_tan#男侦探
🕵️‍♀️	zhen_tan#侦探 nv_zhen_tan#女侦探
💂‍♂️	wei_bing#卫兵 wei_shi#卫士 nan_wei_bing#男卫兵 nan_wei_shi#男卫士
💂‍♀️	wei_bing#卫兵 wei_shi#卫士 nv_wei_bing#女卫兵 nv_wei_shi#女卫士
🥷	ren_zhe#忍者 ren_shu#忍术
👷‍♂️	gong_ren#工人 jian_zhu_gong#建筑工 jian_zhu_gong_ren#建筑工人 nong_min_gong#农民工 nan_gong_ren#男工人 nan_jian_zhu_gong#男建筑工 nan_jian_zhu_gong_ren#男建筑工人 nan_nong_min_gong#男农民工
👷‍♀️	gong_ren#工人 jian_zhu_gong#建筑工 jian_zhu_gong_ren#建筑工人 nong_min_gong#农民工 nv_gong_ren#女工人 nv_jian_zhu_gong#女建筑工 nv_jian_zhu_gong_ren#女建筑工人 nv_nong_min_gong#女农民工
🫅	jun_zhu#君主 dai_wang_guan_de_ren#戴王冠的人 guo_wang#国王 king#king
🤴	wang_zi#王子 xiao_wang_zi#小王子
👸	gong_zhu#公主 xiao_gong_zhu#小公主 nv_wang#女王 nv_huang#女皇 wang_hou#王后 huang_hou#皇后
👳‍♂️	tou_jin#头巾 dai_tou_jin#戴头巾 dai_tou_jin_de_ren#戴头巾的人
👳‍♀️	tou_jin#头巾 dai_tou_jin#戴头巾 dai_tou_jin_de_ren#戴头巾的人
🧕	tou_jin#头巾 mu_si_lin#穆斯林
👲	zhong_guo_mao#中国帽 gua_pi_mao#瓜皮帽 di_zhu#地主
🤵‍♂️	xin_lang#新郎 li_fu#礼服 yan_wei_fu#燕尾服 xi_fu#西服 xi_zhuang#西装
🤵‍♀️	nv_xin_lang#女新郎
👰‍♂️	nan_xin_niang#男新娘
👰‍♀️	dai_tou_sha_de_ren#戴头纱的人 tou_sha#头纱 hun_sha#婚纱 xin_niang#新娘 xin_niang_zi#新娘子
🤰	yun_fu#孕妇 huai_yun#怀孕 da_du_zi#大肚子 huai_le#怀了 yun_du#孕肚
🫃	da_du_zi#大肚子 nan_ren_huai_yun#男人怀孕 huai_yun_de_nan_ren#怀孕的男人 pi_jiu_du#啤酒肚 jiang_jun_du#将军肚
🤱	bu_ru#哺乳 mu_ru#母乳 mu_ru_wei_yang#母乳喂养 wei_nai#喂奶
👩‍🍼	bu_ru#哺乳 bu_ru_de_nv_ren#哺乳的女人 nai_ma#奶妈
👨‍🍼	bu_ru_de_nan_ren#哺乳的男人 nai_ba#奶爸
👼	tian_shi_bao_bao#天使宝宝 xiao_tian_shi#小天使 tian_shi#天使
🎅	sheng_dan_lao_ren#圣诞老人
🤶	sheng_dan_fu_ren#圣诞夫人 sheng_dan_nai_nai#圣诞奶奶
🦸‍♂️	chao_ren#超人 chao_ji_ying_xiong#超级英雄 nan_chao_ren#男超人 nan_chao_ji_ying_xiong#男超级英雄
🦸‍♀️	chao_ren#超人 chao_ji_ying_xiong#超级英雄 nv_chao_ren#女超人 nv_chao_ji_ying_xiong#女超级英雄
🦹‍♂️	fan_pai#反派 huai_dan#坏蛋 chao_ji_da_fan_pai#超级大反派 da_fan_pai#大反派 nan_fan_pai#男反派 nan_huai_dan#男坏蛋 nan_chao_ji_da_fan_pai#男超级大反派 nan_da_fan_pai#男大反派
🦹‍♀️	fan_pai#反派 huai_dan#坏蛋 chao_ji_da_fan_pai#超级大反派 da_fan_pai#大反派 nv_fan_pai#女反派 nv_huai_dan#女坏蛋 nv_chao_ji_da_fan_pai#女超级大反派 nv_da_fan_pai#女大反派
🧙‍♂️	fa_shi#法师 mo_fa_shi#魔法师 mo_shu_shi#魔术师 nan_fa_shi#男法师 nan_mo_fa_shi#男魔法师 nan_mo_shu_shi#男魔术师 nan_wu#男巫
🧙‍♀️	fa_shi#法师 mo_fa_shi#魔法师 mo_shu_shi#魔术师 nv_fa_shi#女法师 nv_mo_fa_shi#女魔法师 nv_mo_shu_shi#女魔术师 nv_wu#女巫
🧚‍♂️	yao_jing#妖精 xiao_jing_ling#小精灵 xiao_xian_zi#小仙子
🧚‍♀️	yao_jing#妖精 xiao_jing_ling#小精灵 xiao_xian_zi#小仙子 xiao_xian_nv#小仙女
🧛‍♂️	xi_xue_gui#吸血鬼 de_gu_la#德古拉 nan_xi_xue_gui#男吸血鬼
🧛‍♀️	xi_xue_gui#吸血鬼 de_gu_la#德古拉 nv_xi_xue_gui#女吸血鬼
🧜‍♂️	ren_yu#人鱼 mei_nan_yu#美男鱼 nan_ren_yu#男人鱼 hai_wang#海王
🧜‍♀️	ren_yu#人鱼 mei_ren_yu#美人鱼
🧝‍♂️	jing_ling#精灵 nan_jing_ling#男精灵 jing_ling_zu#精灵族
🧝‍♀️	jing_ling#精灵 jing_ling_zu#精灵族 nv_jing_ling#女精灵
🧞‍♂️	a_la_ding#阿拉丁 a_la_ding_shen_deng#阿拉丁神灯 deng_shen#灯神 nan_deng_shen#男灯神
🧞‍♀️	a_la_ding#阿拉丁 a_la_ding_shen_deng#阿拉丁神灯 deng_shen#灯神 nv_deng_shen#女灯神
🧟‍♂️	jiang_shi#僵尸 sang_shi#丧尸 xing_shi_zou_rou#行尸走肉 nan_jiang_shi#男僵尸 nan_sang_shi#男丧尸 nan_xing_shi_zou_rou#男行尸走肉
🧟‍♀️	jiang_shi#僵尸 sang_shi#丧尸 xing_shi_zou_rou#行尸走肉 nv_jiang_shi#女僵尸 nv_sang_shi#女丧尸 nv_xing_shi_zou_rou#女行尸走肉
🧌	ju_guai#巨怪 xue_ju_ju_guai#穴居巨怪
💆‍♂️	an_mo#按摩 mei_rong#美容
💆‍♀️	an_mo#按摩 mei_rong#美容
💇‍♂️	jian_tou#剪头 jian_fa#剪发 li_fa#理发 li_tou#理头 jian_tou_fa#剪头发 li_tou_fa#理头发 zuo_zao_xing#做造型 mei_rong_mei_fa#美容美发
💇‍♀️	jian_tou#剪头 jian_fa#剪发 li_fa#理发 li_tou#理头 jian_tou_fa#剪头发 li_tou_fa#理头发 zuo_zao_xing#做造型 mei_rong_mei_fa#美容美发
🚶‍♂️	zou_lu#走路 tu_bu#徒步 xing_zou#行走 xiang_zuo_zou#向左走 wang_zuo_zou#往左走
🚶‍♀️	zou_lu#走路 tu_bu#徒步 xing_zou#行走 xiang_zuo_zou#向左走 wang_zuo_zou#往左走
🧍‍♂️	zhan_zhe#站着 zhan_li#站立 zhan_li_zhe#站立者 zhan_li_de_nan_ren#站立的男人 ge_ge#哥哥 di_di#弟弟 nan_zai#男仔
🧍‍♀️	zhan_zhe#站着 zhan_li#站立 zhan_li_zhe#站立者 zhan_li_de_nv_ren#站立的女人 jie_jie#姐姐 mei_mei#妹妹 nv_zai#女仔
🧎‍♂️	gui_zuo#跪坐 gui_zhe#跪着
🧎‍♀️	gui_zuo#跪坐 gui_zhe#跪着
👨‍🦯	zhu_mang_zhang_de_ren#拄盲杖的人 na_zhe_bai_shou_zhang_de_ren#拿着白手杖的人
👩‍🦯	zhu_mang_zhang_de_ren#拄盲杖的人 na_zhe_bai_shou_zhang_de_ren#拿着白手杖的人
👨‍🦼	zuo_dian_dong_lun_yi_de_ren#坐电动轮椅的人 zuo_dian_dong_lun_yi_de_nan_ren#坐电动轮椅的男人 dian_dong_lun_yi#电动轮椅
👩‍🦼	zuo_dian_dong_lun_yi_de_ren#坐电动轮椅的人 dian_dong_lun_yi#电动轮椅 zuo_dian_dong_lun_yi_de_nv_ren#坐电动轮椅的女人
🦼	dian_dong_lun_yi#电动轮椅
👨‍🦽	zuo_shou_dong_lun_yi_de_ren#坐手动轮椅的人 zuo_shou_dong_lun_yi_de_nan_ren#坐手动轮椅的男人 shou_dong_lun_yi#手动轮椅
👩‍🦽	zuo_shou_dong_lun_yi_de_ren#坐手动轮椅的人 shou_dong_lun_yi#手动轮椅 zuo_shou_dong_lun_yi_de_nv_ren#坐手动轮椅的女人
🦽	shou_dong_lun_yi#手动轮椅 lun_yi#轮椅 can_ji_ren#残疾人
🏃‍♂️	pao_bu#跑步 pao_bu_zhe#跑步者 ma_la_song#马拉松 xiang_zuo_pao#向左跑 wang_zuo_pao#往左跑
🏃‍♀️	pao_bu#跑步 pao_bu_zhe#跑步者 ma_la_song#马拉松 xiang_zuo_pao#向左跑 wang_zuo_pao#往左跑
💃	tiao_wu#跳舞 tiao_wu_de_nv_ren#跳舞的女人 wu_nv#舞女
🕺	tiao_wu#跳舞 tiao_wu_de_nan_ren#跳舞的男人 wu_zhe#舞者
👯‍♂️	tu_xian_sheng#兔先生 tu_er_duo#兔耳朵
👯‍♀️	tu_er_duo#兔耳朵 tu_nv_lang#兔女郎
🧖‍♂️	sang_na#桑拿 zheng_fang#蒸房 zheng_sang_na#蒸桑拿 zheng_fang_li_de_ren#蒸房里的人 zheng_fang_li_de_nan_ren#蒸房里的男人
🧖‍♀️	sang_na#桑拿 zheng_fang#蒸房 zheng_sang_na#蒸桑拿 zheng_fang_li_de_ren#蒸房里的人 zheng_fang_li_de_nv_ren#蒸房里的女人
🧗‍♂️	pan_yan_zhe#攀岩者 pan_pa_de_ren#攀爬的人 deng_shan_zhe#登山者 deng_shan#登山 pan_shan#攀山 pan_pa_de_nan_ren#攀爬的男人
🧗‍♀️	pan_yan_zhe#攀岩者 pan_pa_de_ren#攀爬的人 deng_shan_zhe#登山者 deng_shan#登山 pan_shan#攀山 pan_pa_de_nv_ren#攀爬的女人
🤺	ji_jian_zhe#击剑者 ji_jian#击剑 ji_jian_xuan_shou#击剑选手 jian_dou#剑斗
🏇	sai_ma#赛马 qi_ma#骑马 sai_ma_qi_shi#赛马骑师
⛷️	hua_xue#滑雪 hua_xue_de_ren#滑雪的人
🏂	dan_ban_hua_xue#单板滑雪 hua_xue_ban#滑雪板
🏌️‍♂️	gao_er_fu_qiu_shou#高尔夫球手 da_gao_er_fu_de_ren#打高尔夫的人 gao_er_fu#高尔夫 da_gao_er_fu#打高尔夫
🏌️‍♀️	gao_er_fu_qiu_shou#高尔夫球手 da_gao_er_fu_de_ren#打高尔夫的人 gao_er_fu#高尔夫 da_gao_er_fu#打高尔夫
⛳	gao_er_fu#高尔夫 gao_er_fu_qiu_dong#高尔夫球洞
🏄‍♂️	chong_lang_zhe#冲浪者 chong_lang#冲浪 nan_sheng_chong_lang#男生冲浪
🏄‍♀️	chong_lang_zhe#冲浪者 chong_lang#冲浪 nv_sheng_chong_lang#女生冲浪
🚣‍♂️	hua_chuan#划船 hua_ting#划艇 fan_zhou#泛舟
🚣‍♀️	hua_chuan#划船 hua_ting#划艇 fan_zhou#泛舟
🏊‍♂️	you_yong_zhe#游泳者 you_yong#游泳 yong_ke#泳客 nan_sheng_you_yong#男生游泳
🏊‍♀️	you_yong_zhe#游泳者 you_yong#游泳 yong_ke#泳客 nv_sheng_you_yong#女生游泳
⛹️‍♂️	lan_qiu_yun_dong_yuan#篮球运动员 da_lan_qiu#打篮球 wan_lan_qiu#玩篮球
⛹️‍♀️	lan_qiu_yun_dong_yuan#篮球运动员 da_lan_qiu#打篮球 wan_lan_qiu#玩篮球
🏋️‍♂️	ju_zhong#举重 ju_zhong_yun_dong_yuan#举重运动员 nan_sheng_ju_zhong#男生举重 nan_ju_zhong_yun_dong_yuan#男举重运动员
🏋️‍♀️	ju_zhong#举重 ju_zhong_yun_dong_yuan#举重运动员 nv_sheng_ju_zhong#女生举重 nv_ju_zhong_yun_dong_yuan#女举重运动员
🚴‍♂️	qi_che#骑车 qi_dan_che#骑单车 qi_zi_xing_che#骑自行车
🚴‍♀️	qi_che#骑车 qi_dan_che#骑单车 qi_zi_xing_che#骑自行车
🚵‍♂️	shan_di_che#山地车 shan_di_zi_xing_che#山地自行车 qi_shan_di_che#骑山地车
🚵‍♀️	shan_di_che#山地车 shan_di_zi_xing_che#山地自行车 qi_shan_di_che#骑山地车
🤸‍♂️	ce_shou_fan#侧手翻 fan_jin_dou#翻筋斗 fan_gen_tou#翻跟头
🤸‍♀️	ce_shou_fan#侧手翻 fan_jin_dou#翻筋斗 fan_gen_tou#翻跟头
🤼‍♂️	shuai_jiao#摔跤 shuai_jiao_xuan_shou#摔跤选手 ge_dou#格斗
🤼‍♀️	shuai_jiao#摔跤 shuai_jiao_xuan_shou#摔跤选手 ge_dou#格斗
🤽‍♂️	shui_qiu#水球 wan_shui_qiu#玩水球 nan_sheng_wan_shui_qiu#男生玩水球
🤽‍♀️	shui_qiu#水球 wan_shui_qiu#玩水球 nv_sheng_wan_shui_qiu#女生玩水球
🤾‍♂️	shou_qiu#手球 wan_shou_qiu#玩手球 da_shou_qiu#打手球
🤾‍♀️	shou_qiu#手球 wan_shou_qiu#玩手球 da_shou_qiu#打手球
🤹‍♂️	za_shua#杂耍 pao_jie#抛接 pao_jie_za_shua#抛接杂耍
🤹‍♀️	za_shua#杂耍 pao_jie#抛接 pao_jie_za_shua#抛接杂耍
🧘‍♂️	lian_hua_zuo_de_ren#莲花坐的人 lian_hua_zuo#莲花坐 quan_lian_hua_zuo#全莲花坐 ming_xiang#冥想 yu_jia#瑜伽 pan_tui#盘腿 da_zuo#打坐 yu_jia_nan#瑜伽男 pan_tui_de_nan_ren#盘腿的男人
🧘‍♀️	lian_hua_zuo_de_ren#莲花坐的人 lian_hua_zuo#莲花坐 quan_lian_hua_zuo#全莲花坐 ming_xiang#冥想 yu_jia#瑜伽 pan_tui#盘腿 da_zuo#打坐 yu_jia_nv#瑜伽女 pan_tui_de_nv_ren#盘腿的女人
🛀	xi_zao#洗澡 xi_zao_de_ren#洗澡的人 pao_zao#泡澡 pao_zao_de_ren#泡澡的人
🧑‍🤝‍🧑	qian_shou#牵手 shou_la_shou#手拉手
👭	liang_ge_qian_shou_de_nv_ren#两个牵手的女人 liang_ge_nv_ren#两个女人 gui_mi#闺蜜
👫	qing_lv#情侣 qian_shou_de_qing_lv#牵手的情侣 shou_la_shou_de_qing_lv#手拉手的情侣
👬	liang_ge_qian_shou_de_nan_ren#两个牵手的男人 liang_ge_nan_ren#两个男人 xiong_di#兄弟 ji_you#基友 hao_ji_you#好基友 hao_xiong_di#好兄弟
👨‍❤️‍👨	nan_tong#男同 nan_tong_xing_lian#男同性恋 tong_xing_lian#同性恋 bo_li#玻璃
👩‍❤️‍👩	tong_xing_lian#同性恋 nv_tong#女同 nv_tong_xing_lian#女同性恋 la_la#拉拉
👨‍👩‍👦	yi_jia_ren#一家人 yi_jia_san_kou#一家三口 san_kou_zhi_jia#三口之家
👨‍👩‍👧	yi_jia_ren#一家人 yi_jia_san_kou#一家三口 san_kou_zhi_jia#三口之家
👨‍👩‍👧‍👦	yi_jia_ren#一家人 yi_jia_si_kou#一家四口 si_kou_zhi_jia#四口之家
👨‍👩‍👦‍👦	yi_jia_ren#一家人 yi_jia_si_kou#一家四口 si_kou_zhi_jia#四口之家
👨‍👩‍👧‍👧	yi_jia_ren#一家人 yi_jia_si_kou#一家四口 si_kou_zhi_jia#四口之家
👨‍👦	fu_zi#父子
👨‍👧	fu_nv#父女
👩‍👦	mu_zi#母子
👩‍👧	mu_nv#母女
🗣	jian_ying#剪影 jiang_hua#讲话 jiang_hua_zhe#讲话者 jiang_hua_zhe_de_tou_bu_jian_ying#讲话者的头部剪影 tou_bu_jian_ying#头部剪影
👤	jian_ying#剪影 ren_wu_jian_ying#人物剪影 ban_shen_xiang#半身像 tou_xiang#头像
👥	jian_ying#剪影 ban_shen_xiang#半身像 shuang_ren_xiang#双人像 shuang_ren#双人
👣	jiao_yin#脚印 zu_ji#足迹
🏻	fu_se#肤色 qian_fu_se#浅肤色
🏼	fu_se#肤色 zhong_deng_qian_fu_se#中等浅肤色 jiao_qian_fu_se#较浅肤色
🏽	fu_se#肤色 zhong_deng_fu_se#中等肤色
🏾	fu_se#肤色 zhong_deng_shen_fu_se#中等深肤色 jiao_shen_fu_se#较深肤色
🏿	fu_se#肤色 shen_fu_se#深肤色
🐵	hou#猴 hou_lian#猴脸 hou_tou#猴头
🐒	hou#猴 hou_zi#猴子 ma_liu#马骝
🦍	da_xing_xing#大猩猩 xing_xing#猩猩
🦧	xing_xing#猩猩 hong_mao_xing_xing#红毛猩猩 ren_yuan#人猿
🐶	gou#狗 gou_lian#狗脸 gou_tou#狗头 xiao_gou#小狗 Doge#Doge wang_chai#旺柴 wang_cai#旺财 gou_zai#狗仔
🐕	gou#狗 xiao_gou#小狗 quan#犬 gou_zi#狗子 gou_gou#狗狗
🦮	dao_mang_quan#导盲犬 jin_mao#金毛 jin_mao_quan#金毛犬 jin_mao_xun_hui_quan#金毛寻回犬
🐕‍🦺	gong_zuo_quan#工作犬 fu_wu_quan#服务犬
🐩	gui_bin_quan#贵宾犬 juan_mao_gou#卷毛狗
🐺	lang#狼 lang_lian#狼脸 lang_tou#狼头
🦊	hu_li#狐狸 hu_li_lian#狐狸脸 hu_li_tou#狐狸偷
🦝	huan_xiong#浣熊 xiao_huan_xiong#小浣熊 gan_cui_mian#干脆面 gan_cui_mian_jun#干脆面君
🐱	mao#猫 mao_mi#猫咪 xiao_mao_mi#小猫咪 mao_lian#猫脸 mao_tou#猫头 xiao_mao#小猫 miao#喵 miao_miao#喵喵 miao_miao_miao#喵喵喵 miao_miao_jiao#喵喵叫
🐈	mao_mi#猫咪 xiao_mao_mi#小猫咪 xiao_mao#小猫 ju_mao#橘猫
🐈‍⬛	hei_mao#黑猫 xiao_hei_mao#小黑猫
🦁	shi#狮 shi_zi#狮子 shi_lian#狮脸 shi_tou#狮头 shi_zi_lian#狮子脸 shi_zi_tou#狮子头
🐯	hu#虎 hu_lian#虎脸 hu_tou#虎头 lao_hu#老虎 lao_hu_lian#老虎脸 lao_hu_tou#老虎头
🐅	lao_hu#老虎
🐆	lie_bao#猎豹 bao#豹 bao_zi#豹子
🐴	ma#马 ma_er#马儿 ma_lian#马脸 ma_tou#马头
🐎	ma#马 ma_er#马儿 xiao_ma#小马 jun_ma#骏马
🫎	tuo_lu#驼鹿 tuo_lu_lian#驼鹿脸 tuo_lu_tou#驼鹿头 lu_jiao#鹿角 ma_lu#马鹿
🫏	lv#驴 xiao_lv#小驴 lv_er#驴儿
🦄	du_jiao_shou#独角兽 du_jiao_shou_lian#独角兽脸 du_jiao_shou_tou#独角兽头
🦓	ban_ma#斑马
🦌	lu#鹿 mi_lu#麋鹿
🦬	da_ye_niu#大野牛 ye_niu#野牛
🐮	niu#牛 niu_lian#牛脸 niu_tou#牛头 niu_niu#牛牛 xiao_niu#小牛
🐂	gong_niu#公牛
🐃	shui_niu#水牛
🐄	nai_niu#奶牛
🐷	zhu#猪 zhu_zhu#猪猪 zhu_lian#猪脸 zhu_tou#猪头 lan_zhu#懒猪 xiao_zhu#小猪
🐖	zhu#猪 zhu_zhu#猪猪
🐗	ye_zhu#野猪
🐽	zhu_bi_zi#猪鼻子 zhu_bi#猪鼻
🐏	gong_yang#公羊
🐑	mian_yang#绵羊 yang#羊 yang_yang#羊羊 xiao_yang#小羊
🐐	shan_yang#山羊
🐪	luo_tuo#骆驼 dan_feng_luo_tuo#单峰骆驼
🐫	luo_tuo#骆驼 shuang_feng_luo_tuo#双峰骆驼
🦙	yang_tuo#羊驼 cao_ni_ma#草泥马
🦒	chang_jing_lu#长颈鹿 qi_lin_lu#麒麟鹿
🐘	da_xiang#大象
🦣	meng_ma_xiang#猛犸象
🦏	xi_niu#犀牛
🦛	he_ma#河马
🐭	lao_shu#老鼠 hao_zi#耗子 shu_lian#鼠脸 shu#鼠 lao_shu_lian#老鼠脸 shu_tou#鼠头 lao_shu_tou#老鼠头
🐀	lao_shu#老鼠 hao_zi#耗子
🐁	bai_shu#白鼠 xiao_bai_shu#小白鼠 xiao_lao_shu#小老鼠
🐹	cang_shu#仓鼠 cang_shu_lian#仓鼠脸 cang_shu_tou#仓鼠头
🐰	tu#兔 tu_zi#兔子 tu_lian#兔脸 tu_zi_lian#兔子脸 tu_tou#兔头 tu_zi_tou#兔子头
🐇	tu_zi#兔子 xiao_tu_zi#小兔子 xiao_bai_tu#小白兔 da_bai_tu#大白兔
🐿	song_shu#松鼠 hua_li_shu#花栗鼠
🦫	he_li#河狸 hai_li#海狸
🦔	ci_wei#刺猬
🦇	bian_fu#蝙蝠 zhi_mo#蟙䘃
🐻	xiong#熊 xiong_lian#熊脸 xiong_tou#熊头 xiao_xiong#小熊
🐻‍❄️	bei_ji_xiong#北极熊 bei_ji_xiong_lian#北极熊脸 bei_ji_xiong_tou#北极熊头
🐨	kao_la#考拉 shu_dai_xiong#树袋熊 wu_wei_xiong#无尾熊
🐼	xiong_mao#熊猫 da_xiong_mao#大熊猫 mao_xiong#猫熊 pang_da#胖达 guo_bao#国宝 xiong_mao_lian#熊猫脸 xiong_mao_tou#熊猫头 xiong_mao_ren#熊猫人 panda#panda
🦥	shu_lan#树懒 shu_lan_xian_sheng#树懒先生 man_tun_tun#慢吞吞
🦦	shui_ta#水獭 hai_ta#海獭
🦨	you#鼬 chou_you#臭鼬
🦘	dai_shu#袋鼠
🦡	huan#獾 mi_huan#蜜獾
🐾	zhang_yin#掌印 zhao_yin#爪印 dong_wu_jiao_yin#动物脚印
🦃	huo_ji#火鸡
🐔	ji#鸡 ji_tou#鸡头 ji_ba#鸡巴
🐓	gong_ji#公鸡 mu_ji#母鸡 da_gong_ji#大公鸡 da_mu_ji#大母鸡
🐣	fu_hua_xiao_ji#孵化小鸡 xiao_ji#小鸡 xiao_ji_po_ke#小鸡破壳 po_ke#破壳 chu_sheng#出生
🐤	xiao_ji#小鸡 xiao_ji_tou#小鸡头
🐥	xiao_ji#小鸡 xiao_ji_ji#小鸡鸡
🐦	niao#鸟 niao_tou#鸟头 xiao_niao#小鸟
🐧	qi_e#企鹅 qi_e_tou#企鹅头
🕊	ge_zi#鸽子 he_ping_xiang_zheng#和平象征 he_ping_de_xiang_zheng#和平的象征
🦅	lao_ying#老鹰 ying#鹰
🦆	ya#鸭 ya_zi#鸭子 xiao_ya_zi#小鸭子 ga_ga#嘎嘎
🦢	tian_e#天鹅 bai_tian_e#白天鹅 chou_xiao_ya#丑小鸭
🦉	mao_tou_ying#猫头鹰 xiao#鸮
🦤	du_du_niao#渡渡鸟
🪶	yu_mao#羽毛
🦩	huo_lie_niao#火烈鸟
🦚	kong_que#孔雀
🦜	ying_wu#鹦鹉
🪽	chi_bang#翅膀 tian_shi_de_chi_bang#天使的翅膀 yu_yi#羽翼
🐦‍⬛	hei_niao#黑鸟 wu_ya#乌鸦 hei_se_xiao_niao#黑色小鸟
🪿	e#鹅 da_e#大鹅 e_e_e#鹅鹅鹅
🐸	qing_wa#青蛙 qing_wa_tou#青蛙头 qing_wa_lian#青蛙脸 ha_ma#蛤蟆 ha_ha#蛤蛤 ha#蛤
🐊	e_yu#鳄鱼
🐢	wu_gui#乌龟 hai_gui#海龟 gui#龟
🦎	xi_yi#蜥蜴 bi_hu#壁虎
🐍	she#蛇 she_she#蛇蛇 xiao_she#小蛇 yi_tiao_she#一条蛇 Python#Python
🐲	long#龙 long_tou#龙头 long_wang#龙王 zhong_guo_long#中国龙
🐉	long#龙 shen_long#神龙 ju_long#巨龙 yi_tiao_long#一条龙
🦕	kong_long#恐龙 wan_long#腕龙 lei_long#雷龙 liang_long#梁龙
🦖	kong_long#恐龙 ba_wang_long#霸王龙 bao_long#暴龙
🐳	pen_shui_de_jing_yu#喷水的鲸鱼 pen_shui_de_jing#喷水的鲸 pen_shui#喷水 jing_yu#鲸鱼
🐋	jing_yu#鲸鱼
🐬	hai_tun#海豚
🦭	hai_bao#海豹 hai_shi#海狮
🐟	yu#鱼 yu_er#鱼儿 xiao_yu#小鱼 xiao_yu_er#小鱼儿
🐠	re_dai_yu#热带鱼
🐡	he_tun#河豚
🦈	sha_yu#鲨鱼 da_bai_sha#大白鲨 bai_sha#白鲨
🐙	zhang_yu#章鱼
🐚	hai_luo#海螺 bei_ke#贝壳
🪸	shan_hu#珊瑚 shan_hu_jiao#珊瑚礁
🪼	shui_mu#水母 hai_zhe#海蜇
🐌	wo_niu#蜗牛
🦋	hu_die#蝴蝶 feng_wei_die#凤尾蝶
🐛	chong_zi#虫子 mao_mao_chong#毛毛虫 mao_chong#毛虫 bug#bug
🐜	ma_yi#蚂蚁
🐝	mi_feng#蜜蜂 xiao_mi_feng#小蜜蜂
🪲	kun_chong#昆虫 jia_chong#甲虫 sheng_jia_chong#圣甲虫
🐞	piao_chong#瓢虫 qi_xing_piao_chong#七星瓢虫
🦗	qu_qu#蛐蛐 xi_shuai#蟋蟀 zha_meng#蚱蜢
🪳	zhang_lang#蟑螂 xiao_qiang#小强
🕷	zhi_zhu#蜘蛛
🕸	zhu_wang#蛛网 zhi_zhu_wang#蜘蛛网
🦂	xie_zi#蝎子
🦟	wen_ying#蚊蝇 wen_zi#蚊子 wen_meng#蚊虻
🪰	wen_ying#蚊蝇 cang_ying#苍蝇 jia_ying#家蝇
🪱	ru_chong#蠕虫 ji_sheng_chong#寄生虫 qiu_yin#蚯蚓
🦠	wei_sheng_wu#微生物 bian_xing_chong#变形虫 bing_du#病毒 xi_jun#细菌
💐	hua_shu#花束 xian_hua#鲜花 peng_hua#捧花
🌸	ying_hua#樱花
💮	bai_se_de_hua#白色的花 bai_hua#白花
🪷	lian_hua#莲花
🏵	hua_jie#花结 mei_gui_hua_jie#玫瑰花结
🌹	mei_gui#玫瑰 mei_gui_hua#玫瑰花 hong_mei_gui#红玫瑰
🥀	ku_wei_de_mei_gui#枯萎的玫瑰 ku_wei_de_hua#枯萎的花 ku_wei#枯萎 diao_xie#凋谢
🌺	fu_rong#芙蓉 fu_rong_hua#芙蓉花 mu_jin#木槿 mu_jin_hua#木槿花
🌻	xiang_ri_kui#向日葵 tai_yang_hua#太阳花 xiang_yang_hua#向阳花 zhui_ri_hua#追日花 zhu_ri_hua#逐日花
🌼	hua_duo#花朵 kai_hua#开花 kai_hua_le#开花了 bo_si_ju#波斯菊 chu_ju#雏菊
🌷	hua#花 yu_jin_xiang#郁金香
🪻	feng_xin_zi#风信子
🌱	you_miao#幼苗 nen_miao#嫩苗 fa_ya#发芽
🪴	pen_zai#盆栽 pen_zai_zhi_wu#盆栽植物 hua_pen#花盆
🌲	chang_qing_shu#常青树 song_shu#松树
🌳	shu#树 shu_mu#树木 da_shu#大树 luo_ye_shu#落叶树
🌴	zong_lv#棕榈 zong_lv_shu#棕榈树
🌵	xian_ren_zhang#仙人掌
🌾	dao_sui#稻穗 shui_dao#水稻
🌿	cao_ben_zhi_wu#草本植物 cao_yao#草药 yao_cao#药草 xiang_cao#香草 zhong_yao#中药
☘	san_ye_cao#三叶草
🍀	si_ye_cao#四叶草 xing_yun_cao#幸运草
🍁	feng_ye#枫叶 feng_shu_ye#枫树叶
🍂	luo_ye#落叶
🍃	ye_zi#叶子 shu_ye#树叶
🪹	kong_niao_chao#空鸟巢 kong_chao#空巢
🪺	you_dan_de_niao_chao#有蛋的鸟巢 you_dan_de_chao#有蛋的巢 niao_chao#鸟巢
🍄	mo_gu#蘑菇 xiao_mo_gu#小蘑菇
🍇	pu_tao#葡萄 ti_zi#提子
🍈	tian_gua#甜瓜 ha_mi_gua#哈密瓜 xin_jiang_gua#新疆瓜
🍉	xi_gua#西瓜 chi_gua#吃瓜
🍊	gan_ju#柑橘 ju_zi#橘子 mi_ju#蜜橘
🍋	ning_meng#柠檬
🍌	xiang_jiao#香蕉
🍍	bo_luo#菠萝 feng_li#凤梨
🥭	mang_guo#芒果
🍎	ping_guo#苹果 xiao_ping_guo#小苹果 hong_ping_guo#红苹果
🍏	ping_guo#苹果 xiao_ping_guo#小苹果 qing_ping_guo#青苹果 lv_ping_guo#绿苹果
🍐	li#梨 li_zi#梨子
🍑	tao#桃 tao_zi#桃子 xian_tao#仙桃
🍒	ying_tao#樱桃
🍓	cao_mei#草莓
🫐	lan_mei#蓝莓
🥝	qi_yi_guo#奇异果 mi_hou_tao#猕猴桃
🍅	xi_hong_shi#西红柿 fan_qie#番茄
🫒	gan_lan#橄榄 huang_lan#黄榄 qing_gan_lan#青橄榄
🥥	ye_zi#椰子 ye_zi_guo#椰子果
🥑	niu_you_guo#牛油果 e_li#鳄梨
🍆	qie_zi#茄子
🥔	tu_dou#土豆 yang_yu#洋芋 ma_ling_shu#马铃薯
🥕	hu_luo_bo#胡萝卜 luo_bo#萝卜 hong_luo_bo#红萝卜
🌽	yu_mi#玉米 bao_mi#苞米
🌶	hong_la_jiao#红辣椒 la_jiao#辣椒
🫑	tian_jiao#甜椒 cai_jiao#菜椒 cai_jiao#彩椒 deng_long_jiao#灯笼椒
🥒	huang_gua#黄瓜 qing_gua#青瓜
🥬	lv_ye_shu_cai#绿叶蔬菜 yuan_bai_cai#圆白菜 xiao_bai_cai#小白菜 bai_cai#白菜 shu_cai#蔬菜
🥦	xi_lan_hua#西兰花 hua_ye_cai#花椰菜 lv_cai_hua#绿菜花 qing_hua_cai#青花菜 lv_hua_ye_cai#绿花椰菜
🧄	suan#蒜 da_suan#大蒜 suan_xiang#蒜香
🧅	yang_cong#洋葱 cong_tou#葱头 yang_suan#洋蒜 pi_ya_zi#皮芽子
🥜	hua_sheng#花生 luo_hua_sheng#落花生
🫘	dou#豆 dou_zi#豆子 dou_lei#豆类
🌰	li_zi#栗子 zhen_zi#榛子
🫚	jiang#姜
🫛	wan_dou#豌豆 dou_jia#豆荚 wan_dou_jia#豌豆荚
🍞	mian_bao#面包
🥐	niu_jiao_mian_bao#牛角面包 xin_yue_xing_mian_bao#新月形面包 yang_jiao_mian_bao#羊角面包
🥖	fa_shi_zhang_gun_mian_bao#法式长棍面包 zhang_gun_mian_bao#长棍面包 zhang_mian_bao#长面包
🫓	mian_bing#面饼 da_bing#大饼 bing#饼
🥨	jiao_yan_juan_bing#椒盐卷饼
🥯	bai_ji_bing#百吉饼 bai_ji_quan#百吉圈 mian_bao_quan#面包圈 hong_bei#烘焙
🥞	jian_bing#煎饼 bao_jian_bing#薄煎饼 lao_bing#烙饼 dan_bing#蛋饼
🌯	jian_bing#煎饼 juan_bing#卷饼 mo_xi_ge_juan_bing#墨西哥卷饼 jian_bing_guo_zi#煎饼馃子
🧇	hua_fu_bing#华夫饼 ge_zi_bing#格子饼
🧀	nai_lao#奶酪 zhi_shi#芝士 qi_si#起司
🍖	rou#肉 rou_rou#肉肉 dai_gu_rou#带骨肉 pai_gu#排骨 chi_rou#吃肉
🥩	rou#肉 rou_rou#肉肉 rou_pai#肉排 niu_pai#牛排 zhu_pai#猪排 yang_pai#羊排
🍗	jia_qin_tui#家禽腿 jia_qin_de_tui#家禽的腿 ji_tui#鸡腿 ji_tui_er#鸡腿儿
🥓	pei_gen#培根 yan_rou#烟肉
🍔	han_bao#汉堡 han_pu_bao#汉堡包
🍟	shu_tiao#薯条
🍕	bi_sa#比萨 bi_sa_bing#比萨饼 chi_bi_sa#吃比萨 chi_bi_sa_bing#吃比萨饼
🌭	re_gou#热狗
🥪	san_ming_zhi#三明治
🌮	juan_bing#卷饼 mo_xi_ge_juan_bing#墨西哥卷饼 mo_xi_ge_bao_bing_juan#墨西哥薄饼卷
🫔	mo_xi_ge_zong#墨西哥粽 mo_xi_ge_zong_zi#墨西哥粽子
🥙	pi_ta_san_ming_zhi#皮塔三明治
🧆	fa_la_fei#法拉费 zhong_dong_shu_cai_qiu#中东蔬菜球 you_zha_ying_zui_dou_bing#油炸鹰嘴豆饼 zha_dou_wan_zi#炸豆丸子 rou_wan#肉丸 rou_wan_zi#肉丸子
🥚	ji_dan#鸡蛋 dan#蛋 dan_dan#蛋蛋
🍳	peng_ren#烹饪 ping_di_guo#平底锅 jian_dan#煎蛋
🥘	shi_wu#食物 yi_guo_shi_wu#一锅食物 huo_guo#火锅
🍲	shi_wu#食物 yi_guo_shi_wu#一锅食物 huo_guo#火锅
🫕	nai_lao_huo_guo#奶酪火锅 zhi_shi_huo_guo#芝士火锅 qi_si_huo_guo#起司火锅
🥣	wan_shao#碗勺 fang_zhe_shao_de_wan#放着勺的碗 wan#碗 tang#汤 tang_wan#汤碗
🥗	sha_la#沙拉 lv_se_sha_la#绿色沙拉 shu_cai_sha_la#蔬菜沙拉
🍿	bao_mi_hua#爆米花
🧈	huang_you#黄油 huang_ru_you#黄乳油
🧂	yan#盐 shi_yan#食盐 zuo_liao_ping#佐料瓶 zuo_liao#佐料 tiao_wei_pin#调味品
🥫	guan_tou#罐头 guan_tou_shi_pin#罐头食品
🍱	bian_dang#便当 bian_dang_he#便当盒 he_fan#盒饭 wai_mai#外卖 kuai_can#快餐 kuai_can_he#快餐盒
🥡	wai_mai#外卖 wai_mai_he#外卖盒 wai_mai_bao_zhuang#外卖包装 wai_mai_tong#外卖桶
🍘	mi_bing#米饼 mi_guo#米果
🍙	fan_tuan#饭团
🍚	zhu_shu_de_fan#煮熟的饭 mi_fan#米饭 da_mi#大米 da_mi_fan#大米饭
🍛	ga_li#咖喱 ga_li_fan#咖喱饭
🍜	mao_re_qi_de_wan#冒热气的碗 la_mian#拉面 mian_tiao#面条 wan_mian#碗面 yi_wan_mian#一碗面 chi_mian#吃面
🍝	yi_da_li_mian#意大利面 yi_da_li_mian_tiao#意大利面条 yi_fen#意粉 yi_mian#意面
🍠	di_gua#地瓜 kao_di_gua#烤地瓜 hong_shu#红薯 kao_hong_shu#烤红薯 fan_shu#番薯 kao_fan_shu#烤番薯 gan_shu#甘薯 kao_gan_shu#烤甘薯
🍢	guan_dong_zhu#关东煮 chuan_chuan#串串
🍣	shou_si#寿司
🍤	zha_xia#炸虾 tian_fu_luo#天妇罗
🍥	pan_rao_shi_zha_yu_bing#盘绕是炸鱼饼 yu_bing#鱼饼 yu_ban#鱼板
🥮	yue_bing#月饼 yue_tuan#月团 feng_shou_bing#丰收饼 tuan_yuan_bing#团圆饼
🍡	tuan_zi#团子 nuo_mi_tuan#糯米团
🥟	jiao_zi#饺子 shui_jiao#水饺
🥠	xing_yun_bing_gan#幸运饼干
🦀	pang_xie#螃蟹 xie#蟹 xie_lao_ban#蟹老板
🦞	long_xia#龙虾 xiao_long_xia#小龙虾 ma_la_xiao_long_xia#麻辣小龙虾
🦐	xia#虾 da_xia#大虾 dui_xia#对虾
🦑	you_yu#鱿鱼 wu_zei#乌贼 mo_yu#墨鱼
🦪	mu_li#牡蛎 sheng_hao#生蚝 hao_li#蚝蛎
🍦	ruan_bing_qi_lin#软冰淇淋 ruan_bing_ji_ling#软冰激凌 bing_qi_lin#冰淇淋 bing_ji_ling#冰激凌 yuan_tong_bing_qi_lin#圆筒冰淇淋 yuan_tong_bing_ji_ling#圆筒冰激凌 tian_tong#甜筒
🍨	bing_qi_lin#冰淇淋 bing_ji_ling#冰激凌
🍧	bao_bing#刨冰 bing_sha#冰沙
🍩	you_zha_mian_quan#油炸面圈 tian_tian_quan#甜甜圈
🍪	qu_qi#曲奇 bing_gan#饼干 qu_qi_bing_gan#曲奇饼干 cookie#cookie cookies#cookies
🎂	dan_gao#蛋糕 sheng_ri_dan_gao#生日蛋糕
🍰	dan_gao#蛋糕 shui_guo_dan_gao#水果蛋糕
🧁	zhi_bei_dan_gao#纸杯蛋糕
🥧	pai#派 you_su_dian_xin#油酥点心 dian_xin#点心
🍫	qiao_ke_li#巧克力 qiao_ke_li_bang#巧克力棒 zhu_gu_li#朱古力 zhu_gu_li_bang#朱古力棒
🍬	tang_guo#糖果 tang#糖 chi_tang#吃糖
🍭	bang_bang_tang#棒棒糖
🍮	dan_nai_gao#蛋奶糕 tian_pin#甜品 tian_dian#甜点 bu_ding#布丁
🍯	mi_guan#蜜罐 feng_mi#蜂蜜
🍼	nai_ping#奶瓶 he_nai#喝奶
🥛	yi_bei_nai#一杯奶 niu_nai_bei#牛奶杯 niu_nai#牛奶 bei_zi#杯子
☕	ka_fei#咖啡 ka_fei_bei#咖啡杯 he_ka_fei#喝咖啡
🫖	cha_hu#茶壶 yi_hu_cha#一壶茶 yi_hu#一壶
🍵	cha#茶 cha_shui#茶水 cha_bei#茶杯 he_cha#喝茶 pao_cha#泡茶
🍶	qing_jiu#清酒
🍾	kai_xiang_bin#开香槟 xiang_bin#香槟
🍷	pu_tao_jiu#葡萄酒 jiu_bei#酒杯 jiu#酒
🍸	ji_wei_jiu#鸡尾酒
🍹	re_dai_yin_liao#热带饮料 re_dai_shui_guo_yin_liao#热带水果饮料 shui_guo_yin_liao#水果饮料 guo_yin#果饮 leng_yin#冷饮
🍺	pi_jiu#啤酒
🍻	gan_bei#干杯 peng_bei#碰杯
🥂	gan_bei#干杯 peng_bei#碰杯
🥃	wei_shi_ji#威士忌 ping_di_bei#平底杯 yi_bei_jiu#一杯酒 yi_bei#一杯 bo_li_bei#玻璃杯 lie_jiu#烈酒
🫗	qing_dao_ye_ti#倾倒液体 qing_dao#倾倒
🥤	wai_dai_bei_zi#外带杯子 dai_xi_guan_bei#带吸管杯 xi_guan_bei#吸管杯 yin_liao#饮料
🧋	bo_ba_nai_cha#波霸奶茶 zhen_zhu_nai_cha#珍珠奶茶 nai_cha#奶茶 yi_bei_nai_cha#一杯奶茶
🧃	guo_zhi_he#果汁盒 guo_zhi#果汁
🧉	ma_dai_cha#马黛茶
🧊	bing_kuai#冰块 bing#冰 jia_bing#加冰
🥢	kuai_zi#筷子
🍽	can_ju#餐具
🍴	dao_cha#刀叉
🥄	shao_zi#勺子 tang_shao#汤勺 chi_zi#匙子 tang_chi#汤匙
🔪	dao#刀 cai_dao#菜刀 shui_guo_dao#水果刀 xiao_dao#小刀
🫙	guan_zi#罐子 ping_zi#瓶子 bo_li_ping#玻璃瓶
🏺	shuang_er_ping#双耳瓶
🌐	di_qiu#地球 zi_wu_xian#子午线 jing_wei_xian#经纬线
🌍	di_qiu#地球 di_qiu_yi#地球仪 ou_zhou#欧洲 fei_zhou#非洲 ou_zhou_fei_zhou#欧洲非洲 fei_zhou_ou_zhou#非洲欧洲 ou_zhou_di_qiu_yi#欧洲地球仪 fei_zhou_di_qiu_yi#非洲地球仪 ou_zhou_fei_zhou_di_qiu_yi#欧洲非洲地球仪 ou_fei_di_qiu_yi#欧非地球仪
🌎	di_qiu#地球 di_qiu_yi#地球仪 mei_zhou#美洲 mei_zhou_di_qiu_yi#美洲地球仪
🌏	di_qiu#地球 di_qiu_yi#地球仪 ya_zhou#亚洲 ao_zhou#澳洲 ya_zhou_ao_zhou#亚洲澳洲 ao_zhou_ya_zhou#澳洲亚洲 ya_zhou_di_qiu_yi#亚洲地球仪 ao_zhou_di_qiu_yi#澳洲地球仪 ya_ao_di_qiu_yi#亚澳地球仪 ao_ya_di_qiu_yi#澳亚地球仪
🇦🇺	ao_zhou#澳洲 ao_da_li_ya#澳大利亚 ao_da_li_ya_lian_bang#澳大利亚联邦
🗺	shi_jie_di_tu#世界地图
🗾	ri_ben_jian_ying#日本剪影 ri_ben_di_tu#日本地图
🧭	zhi_nan_zhen#指南针 zhi_bei_zhen#指北针 fang_xiang#方向 luo_pan#罗盘
🏔	xue_shan#雪山 gao_shan#高山
⛰️	shan#山 shan_mai#山脉 shan_feng#山峰 shan_ding#山顶
🌋	huo_shan#火山 huo_shan_pen_fa#火山喷发 huo_shan_bao_fa#火山爆发
🗻	fu_shi_shan#富士山
🏕	lu_ying#露营 ye_ying#野营
🏖	tai_yang_san#太阳伞 sha_tan_san#沙滩伞 du_jia#度假
⛱️	sha_tan_san#沙滩伞 zhe_yang_san#遮阳伞
🏜	sha_mo#沙漠 huang_mo#荒漠
🏝	huang_dao#荒岛 wu_ren_dao#无人岛 wu_ren_huang_dao#无人荒岛
🏞	guo_jia_gong_yuan#国家公园
🏟	ti_yu_chang#体育场 ti_yu_guan#体育馆 zu_qiu_chang#足球场
🏛	gu_dian_jian_zhu#古典建筑 gu_jian_zhu#古建筑 bo_wu_guan#博物馆
🏗	jian_zhu_shi_gong#建筑施工 shi_gong#施工 qi_zhong_ji#起重机
🚧	shi_gong#施工 shi_gong_fu_hao#施工符号 shi_gong_zhong#施工中 qian_fang_shi_gong#前方施工 lu_zhang#路障
🧱	zhuan_kuai#砖块 ban_zhuan#板砖 ban_er_zhuan#板儿砖 zhuan_tou#砖头
🪨	yan_shi#岩石 shi_tou#石头
🪵	mu_tou#木头 yuan_mu#原木 mu_cai#木材
🛖	xiao_wu#小屋 meng_gu_bao#蒙古包 cao_wu#草屋
🏘	fang_wu_qun#房屋群 ju_min_qu#居民区
🏚	fei_qi_de_fang_wu#废弃的房屋 huang_zhai#荒宅 wei_lou#危楼
🏠	jia#家 zhu_zhai_lou#住宅楼 fang_zi#房子 fang_wu#房屋
🏡	dai_hua_yuan_de_lou_fang#带花园的楼房 bie_shu#别墅
🏢	ban_gong_lou#办公楼 xie_zi_lou#写字楼
🏣	ri_ben_you_ju#日本邮局 you_ju#邮局
🏤	you_ju#邮局 ou_zhou_you_ju#欧洲邮局
🏥	yi_yuan#医院
🏦	yin_hang#银行
🏨	jiu_dian#酒店 lv_dian#旅店 lv_guan#旅馆 bin_guan#宾馆
🏩	ai_qing_jiu_dian#爱情酒店 ai_qing_lv_dian#爱情旅店 ai_qing_lv_guan#爱情旅馆 ai_qing_bin_guan#爱情宾馆 qing_lv_jiu_dian#情侣酒店 qing_lv_lv_dian#情侣旅店 qing_lv_lv_guan#情侣旅馆 qing_lv_bin_guan#情侣宾馆 qing_ren_jiu_dian#情人酒店 qing_ren_lv_dian#情人旅店 qing_ren_lv_guan#情人旅馆 qing_ren_bin_guan#情人宾馆
🏪	bian_li_shang_dian#便利商店 bian_li_dian#便利店 shang_dian#商店 xiao_shang_dian#小商店
🏫	xue_xiao#学校 jiao_xue_lou#教学楼
🏬	bai_huo_shang_dian#百货商店 shang_chang#商场 chao_shi#超市 shang_chao#商超
🏭	gong_chang#工厂
🏯	ri_ben_cheng_bao#日本城堡 ri_shi_cheng_bao#日式城堡 cheng_bao#城堡
🏰	cheng_bao#城堡 ou_zhou_cheng_bao#欧洲城堡 ou_shi_cheng_bao#欧式城堡
💒	hun_li#婚礼 jiao_tang#教堂
⛪	jiao_tang#教堂 sheng_tang#圣堂
🗼	dong_jing_ta#东京塔
🗽	zi_you_nv_shen_xiang#自由女神像 zi_you_nv_shen#自由女神
🕌	qing_zhen_si#清真寺 qing_zhen#清真
🛕	yin_du_miao#印度庙 yin_du_si_miao#印度寺庙 fo_si#佛寺 miao_yu#庙宇
🕍	you_tai_jiao_hui_tang#犹太教会堂 you_tai_jiao_tang#犹太教堂
⛩️	shen_she#神社 ri_ben_shen_she#日本神社
🕋	ke_er_bai#克尔白
⛲	pen_quan#喷泉 gong_yuan#公园
⛺	zhang_peng#帐篷
🌁	wu_qi_long_zhao_de_qiao#雾气笼罩的桥 wu_meng_meng#雾蒙蒙 wu_qi#雾气 wu_dou#雾都
🌃	xing_guang_shan_shan_de_ye_wan#星光闪闪的夜晚 ye_wan#夜晚 wan_shang#晚上 ban_ye#半夜 shen_ye#深夜
🏙	cheng_shi_jing_guan#城市景观 cheng_shi_feng_guang#城市风光 du_shi_jing_guan#都市景观 du_shi_feng_guang#都市风光 cheng_shi#城市 du_shi#都市
🌄	da_shan_ri_chu#大山日出 shan_ding_ri_chu#山顶日出 shan_zhong_ri_chu#山中日出 ri_chu#日出 xu_ri#旭日 xu_ri_dong_sheng#旭日东升
🌅	ri_chu#日出 xu_ri#旭日 xu_ri_dong_sheng#旭日东升
🌆	mu_se_zhong_de_cheng_shi#暮色中的城市 mu_se#暮色 huang_hun#黄昏 bang_wan#傍晚
🌇	da_sha_xi_yang#大厦夕阳 xi_yang#夕阳 ri_luo#日落 luo_ri#落日
🌉	qiao#桥 ye_jian_de_da_qiao#夜间的大桥 ye_jian_da_qiao#夜间大桥 ye_mu_xia_de_qiao#夜幕下的桥 da_qiao#大桥
♨️	wen_quan#温泉 xiu_xi#休息
🎠	xuan_zhuan_mu_ma#旋转木马 you_le_yuan#游乐园
🛝	hua_ti#滑梯 hua_hua_ti#滑滑梯
🎡	mo_tian_lun#摩天轮
🎢	guo_shan_che#过山车
💈	li_fa_dian_zhao_pai#理发店招牌 li_fa_dian#理发店
🎪	ma_xi#马戏 ma_xi_tuan#马戏团 ma_xi_tuan_zhang_peng#马戏团帐篷
🚂	zheng_qi_huo_che#蒸汽火车
🚃	gui_dao_che#轨道车
🚄	dong_che#动车 xin_gan_xian#新干线 lie_che#列车 gao_su_lie_che#高速列车 gao_tie#高铁
🚅	dong_che#动车 xin_gan_xian#新干线 lie_che#列车 gao_su_lie_che#高速列车 gao_tie#高铁 gao_su_zi_dan_tou_lie_che#高速子弹头列车 zi_dan_tou_gao_su_lie_che#子弹头高速列车
🚆	huo_che#火车 lv_pi_huo_che#绿皮火车
🚇	di_tie#地铁 di_xia_tie_lu#地下铁路
Ⓜ️	di_tie#地铁
🚈	qing_gui_dian_che#轻轨电车 qing_gui#轻轨
🚉	che_zhan#车站 huo_che_zhan#火车站 zhan_tai#站台
🚝	dan_gui_tie_lu#单轨铁路 dan_gui#单轨
🚞	shan_qu_tie_lu#山区铁路
🚋	you_gui_dian_che#有轨电车
🚌	gong_jiao_che#公交车 gong_gong_qi_che#公共汽车 gong_che#公车 da_ba#大巴 ba_shi#巴士
🚍	gong_jiao_che#公交车 gong_gong_qi_che#公共汽车 gong_che#公车 da_ba#大巴 ba_shi#巴士
🚎	wu_gui_dian_che#无轨电车 dian_che#电车
🚐	mian_bao_che#面包车 xiao_ba#小巴 wu_ling#五菱 wu_ling_hong_guang#五菱宏光
🚑	jiu_hu_che#救护车 ji_jiu_che#急救车
🚒	xiao_fang_che#消防车 jiu_huo_che#救火车
🚓	jing_che#警车
🚔	jing_che#警车 bao_jing#报警
🚕	chu_zu_che#出租车 di_shi#的士
🚖	chu_zu_che#出租车 di_shi#的士
🚗	qi_che#汽车 jiao_che#轿车 xiao_qi_che#小汽车 xiao_jiao_che#小轿车 si_jia_che#私家车 che#车
🚘	qi_che#汽车 jiao_che#轿车 xiao_qi_che#小汽车 xiao_jiao_che#小轿车 si_jia_che#私家车
🚙	yue_ye_che#越野车 SUV#SUV xiu_xian_che#休闲车 yun_dong_xing_duo_yong_tu_che#运动型多用途车
🛻	pi_ka#皮卡 pi_ka_che#皮卡车
🚚	song_huo_che#送货车 huo_che#货车 wu_liu#物流
🚛	tuo_che#拖车 ka_che#卡车 da_ka_che#大卡车
🚜	tuo_la_ji#拖拉机
🏎	sai_che#赛车 fang_cheng_shi_sai_che#方程式赛车
🏍	mo_tuo#摩托 mo_tuo_che#摩托车
🛵	xiao_xing_mo_tuo_che#小型摩托车 dian_dong_che#电动车 dian_ping_che#电瓶车 xiao_dian_lv#小电驴
♿	lun_yi#轮椅 lun_yi_biao_zhi#轮椅标志
🛺	du_du_che#嘟嘟车 san_beng_zi#三蹦子 san_jiao_ji#三脚鸡 san_lun_che#三轮车 san_lun_mo_tuo_che#三轮摩托车 zi_dong_ren_li_che#自动人力车
🚲	dan_che#单车 zi_xing_che#自行车 jiao_ta_che#脚踏车
🛴	hua_ban_che#滑板车
🛹	hua_ban#滑板
🛼	lun_hua#轮滑 lun_hua_xie#轮滑鞋 han_bing#旱冰 han_bing_xie#旱冰鞋 hua_han_bing#滑旱冰 si_lun_hua_bing_xie#四轮滑冰鞋
🚏	gong_jiao_zhan#公交站 gong_jiao_che_zhan#公交车站 gong_gong_qi_che_zhan#公共汽车站
🛣	gao_su_gong_lu#高速公路 gao_su#高速 gong_lu#公路
🛤	tie_gui#铁轨
🛢	you_tong#油桶
🛞	che_lun#车轮 che_lun_zi#车轮子 lun_tai#轮胎 lun_zi#轮子 gu_lu#轱辘 che_gu_lu#车轱辘
🚨	jing_che_xuan_zhuan_deng#警车旋转灯 jing_deng#警灯 jing_che_deng#警车灯 bao_jing_deng#报警灯
🚥	jiao_tong_xin_hao_deng#交通信号灯 jiao_tong_deng#交通灯 xin_hao_deng#信号灯 hong_lv_deng#红绿灯
🚦	jiao_tong_xin_hao_deng#交通信号灯 jiao_tong_deng#交通灯 xin_hao_deng#信号灯 hong_lv_deng#红绿灯
🛑	ba_bian_xing#八边形
⚓	mao#锚 chuan_mao#船锚
🛟	jiu_sheng_quan#救生圈 you_yong_quan#游泳圈 yong_quan#泳圈 jiu_sheng#救生
⛵	fan_chuan#帆船
🛶	du_mu_zhou#独木舟
🚤	kuai_ting#快艇 sai_ting#赛艇
🛳	ke_lun#客轮 ke_chuan#客船
⛴	lun_du#轮渡 du_lun#渡轮 du_chuan#渡船
🛥	mo_tuo_ting#摩托艇
🚢	lun_chuan#轮船 you_lun#邮轮 hai_yun#海运 chuan#船
✈️	fei_ji#飞机 lv_xing#旅行
🛩	xiao_xing_fei_ji#小型飞机
🛫	fei_ji_qi_fei#飞机起飞 hang_ban_qi_fei#航班起飞 qi_fei#起飞
🛬	fei_ji_zhuo_lu#飞机着陆 hang_ban_jiang_luo#航班降落 jiang_luo#降落 zhuo_lu#着陆
🪂	jiang_luo_san#降落伞 tiao_san#跳伞
💺	zuo_wei#座位
🚁	zhi_sheng_ji#直升机 zhi_sheng_fei_ji#直升飞机
🚟	gao_jia_tie_lu#高架铁路 kong_zhong_gui_dao_lie_che#空中轨道列车 kong_gui#空轨
🚠	gao_shan_suo_dao#高山索道 lan_che#缆车
🚡	lan_che#缆车 kong_zhong_lan_che#空中缆车
🛰	wei_xing#卫星
🚀	huo_jian#火箭 rocket#rocket
🛸	UFO#UFO bu_ming_fei_xing_wu#不明飞行物 fei_die#飞碟
🛎	fu_wu_ling#服务铃
🧳	xing_li_xiang#行李箱 xing_li#行李
⌛	sha_lou#沙漏
⏳	sha_lou#沙漏
⌚	shou_biao#手表 biao#表 shi_jian#时间
⏰	nao_zhong#闹钟 nao_biao#闹表
⏱	miao_biao#秒表 ji_shi_qi#计时器
⏲	ding_shi_qi#定时器
🕰	tai_zhong#台钟 bi_lu_zhong#壁炉钟 zuo_zhong#座钟 zhong_biao#钟表
🕛	shi_er_dian#十二点 shi_er_dian_zhong#十二点钟
🕧	shi_er_dian_ban#十二点半
🕜	yi_dian_ban#一点半
🕑	liang_dian#两点 liang_dian_zhong#两点钟
🕝	liang_dian_ban#两点半
🕒	san_dian#三点 san_dian_zhong#三点钟
🕞	san_dian_ban#三点半
🕓	si_dian#四点 si_dian_zhong#四点钟
🕟	si_dian_ban#四点半
🕔	wu_dian#五点 wu_dian_zhong#五点钟
🕠	wu_dian_ban#五点半
🕕	liu_dian#六点 liu_dian_zhong#六点钟
🕡	liu_dian_ban#六点半
🕖	qi_dian#七点 qi_dian_zhong#七点钟
🕢	qi_dian_ban#七点半
🕗	ba_dian#八点 ba_dian_zhong#八点钟
🕣	ba_dian_ban#八点半
🕘	jiu_dian#九点 jiu_dian_zhong#九点钟
🕤	jiu_dian_ban#九点半
🕙	shi_dian#十点 shi_dian_zhong#十点钟
🕥	shi_dian_ban#十点半
🕚	shi_yi_dian#十一点 shi_yi_dian_zhong#十一点钟
🕦	shi_yi_dian_ban#十一点半
🌑	xin_yue#新月 shuo_yue#朔月
🌚	xin_yue#新月 shuo_yue#朔月 wei_xiao_de_xin_yue#微笑的新月 wei_xiao_de_shuo_yue#微笑的朔月
🌒	mei_yue#眉月 e_mei_yue#蛾眉月 can_yue#残月 yue_shi#月食
🌘	mei_yue#眉月 e_mei_yue#蛾眉月 can_yue#残月 yue_shi#月食
🌓	shang_xian_yue#上弦月
🌛	shang_xian_yue#上弦月 wei_xiao_de_shang_xian_yue#微笑的上弦月
🌔	ying_tu_yue#盈凸月
🌕	man_yue#满月 yuan_yue#圆月 yue_qiu#月球
🌝	man_yue#满月 yuan_yue#圆月 wei_xiao_de_yue_liang#微笑的月亮 wei_xiao_de_man_yue#微笑的满月
🌖	kui_tu_yue#亏凸月
🌗	xia_xian_yue#下弦月
🌜	xia_xian_yue#下弦月 wei_xiao_de_xia_xian_yue#微笑的下弦月
🌙	yue_ya#月牙 yue_liang#月亮 wan_yue#弯月
🌡	wen_du_ji#温度计
☀️	tai_yang#太阳 ri#日 qing_tian#晴天
🌞	tai_yang#太阳 wei_xiao_de_tai_yang#微笑的太阳
🪐	xing_xing#行星 tu_xing#土星 you_huan_xing_xing#有环行星 xing_qiu#星球
⭐	wu_jiao_xing#五角星 xing_xing#星星
🌟	xing_xing#星星 shan_yao_de_xing_xing#闪耀的星星 shan_liang_de_xing_xing#闪亮的星星
✨	xing_xing#星星 shan_liang#闪亮 shan_guang#闪光 shan_yao#闪耀 jin_guang_shan_shan#金光闪闪 jin_shan_shan#金闪闪
🌠	liu_xing#流星 xu_yuan#许愿
🌌	xing_kong#星空 yin_he#银河 yin_he_xi#银河系
☁️	yun#云 yun_cai#云彩 yun_duo#云朵 cloud#cloud tian_qi#天气
⛅	wu_yun_bi_ri#乌云蔽日 duo_yun#多云 yin_tian#阴天
⛈️	lei_zhen_yu#雷阵雨 da_yu#大雨 xia_da_yu#下大雨
🌤	shao_yun#少云 qing_ou_you_yun#晴偶有云 bai_ri_xiao_yun#白日小云
🌧	xia_yu#下雨 yu#雨 yu_yun#雨云
🌨	xia_xue#下雪 xue_yun#雪云
❄️	xia_xue#下雪 xue#雪 xue_hua#雪花
🌩	da_lei#打雷 lei_yun#雷云
🌪	long_juan_feng#龙卷风
🌫	wu#雾 mai#霾 wu_mai#雾霾
🌬	feng_chui_fu_de_lian#风吹拂的脸 feng_chui_fu#风吹拂 chui_fu#吹拂 chui_feng#吹风 chui_kou_qi#吹口气 chui_qi#吹气
🌀	tai_feng#台风 xuan_feng#旋风 ju_feng#飓风 xuan_wo#漩涡 wen_xiang#蚊香 qi_xuan#气旋
🌈	cai_hong#彩虹
🌂	shou_qi_de_san#收起的伞 shou_qi_de_yu_san#收起的雨伞 yu_san#雨伞
☂️	yu_san#雨伞 da_san#打伞 cheng_san#撑伞 san_zhuang#伞状
☔	yu_san#雨伞 da_san#打伞 cheng_san#撑伞
⚡	shan_dian#闪电 gao_ya_dian#高压电
⛄	xue_ren#雪人 dui_xue_ren#堆雪人
☄️	hui_xing#彗星 ha_lei#哈雷 ha_lei_hui_xing#哈雷彗星
🔥	huo#火 huo_yan#火焰 ran_shao#燃烧 dian_ran#点燃 zhao_huo#着火 zhao_huo_le#着火了 huo_le#火了
🌊	bo_lang#波浪 lang_hua#浪花 lang#浪 da_lang#大浪
🎃	wan_sheng_jie#万圣节 nan_gua_deng#南瓜灯 nan_gua_tou#南瓜头
🎄	sheng_dan_shu#圣诞树
🎆	yan_hua#烟花 yan_huo#焰火 li_hua#礼花
🎇	yan_hua#烟花 yan_huo#焰火 li_hua#礼花
🧨	bian_pao#鞭炮 zha_yao#炸药 bao_zhu#爆竹
🎈	qi_qiu#气球 qing_dian#庆典
🎊	wu_cai_zhi_xie_qiu#五彩纸屑球 cai_se_sui_zhi#彩色碎纸 sui_hua_cai_qiu#碎花彩球 tang_guo_qiu#糖果球
🎋	qi_xi#七夕 qi_xi_shu#七夕树 qi_xi_jie#七夕节
🎍	men_song#门松
🎎	ri_ben_wa_wa#日本娃娃 ri_ben_ren_xing#日本人形 ri_ben_ren_ou#日本人偶
🎏	li_yu_qi#鲤鱼旗
🎐	feng_ling#风铃
🎑	zhong_qiu#中秋 zhong_qiu_jie#中秋节 zhong_qiu_jia_jie#中秋佳节 guan_yue#观月 shang_yue#赏月
🧧	hong_bao#红包 fa_hong_bao#发红包
🎀	hu_die_jie#蝴蝶结
🎁	li_wu#礼物 li_pin#礼品 li_wu_he#礼物盒 li_pin_he#礼品盒 bao_zhuang#包装 bao_zhuang_he#包装盒
🎗	si_dai#丝带 huang_si_dai#黄丝带
🎟	ru_chang_quan#入场券
🎫	men_piao#门票
🎖	ju_gong_xun_zhang#鞠躬勋章 jun_gong_zhang#军功章 xun_zhang#勋章
🏆	jiang_bei#奖杯 guan_jun#冠军
🏅	yun_dong_hui_jiang_pai#运动会奖牌 jiang_pai#奖牌
🥇	jin_pai#金牌
🥈	yin_pai#银牌
🥉	tong_pai#铜牌
⚽	zu_qiu#足球 ying_shi_zu_qiu#英式足球
⚾	bang_qiu#棒球
🥎	lei_qiu#垒球
🏀	lan_qiu#篮球
🏐	pai_qiu#排球
🏈	gan_lan_qiu#橄榄球 mei_shi_gan_lan_qiu#美式橄榄球 mei_shi_zu_qiu#美式足球
🏉	gan_lan_qiu#橄榄球 ying_shi_gan_lan_qiu#英式橄榄球
🎾	wang_qiu#网球
🥏	fei_pan#飞盘
🎳	bao_ling_qiu#保龄球 bao_ling_qiu_ping#保龄球瓶
🏏	ban_qiu#板球 ban_qiu_pai#板球拍
🏑	qu_gun_qiu#曲棍球
🏒	bing_qiu#冰球
🥍	dai_gun_qiu#袋棍球
🏓	ping_pang_qiu#乒乓球 ping_pang_qiu_pai#乒乓球拍
🏸	yu_mao_qiu#羽毛球 yu_mao_qiu_pai#羽毛球拍 qiu_pai#球拍
🥊	quan_ji_shou_tao#拳击手套
🥋	wu_shu_fu#武术服 kong_shou_dao_fu#空手道服 tai_quan_dao_fu#跆拳道服 rou_dao_fu#柔道服
🥅	qiu_men_wang#球门网 qiu_wang#球网 qiu_men#球门
⛸	liu_bing_xie#溜冰鞋 liu_bing#溜冰 hua_bing#滑冰
🎣	diao_yu_gan#钓鱼竿 yu_gan#渔竿 diao_gan#钓竿 diao_yu#钓鱼
🤿	qian_shui_mian_zhao#潜水面罩 shen_qian#深潜 qian_shui#潜水
🎽	yun_dong_bei_xin#运动背心
🎿	hua_xue_qiao#滑雪橇 hua_xue_zhuang_bei#滑雪装备
🛷	xue_qiao#雪橇 cheng_xue_qiao#乘雪橇 jia_xue_qiao#驾雪橇 zuo_xue_qiao#坐雪橇
🥌	bing_shang_liu_shi#冰上溜石 liu_shi#溜石 bing_hu#冰壶
🎯	ba_xin#靶心 zheng_zhong_ba_xin_de_fei_biao#正中靶心的飞镖 fei_biao#飞镖 ming_zhong#命中
🪀	liu_liu_qiu#溜溜球 you_you_qiu#悠悠球
🪁	feng_zheng#风筝 fang_feng_zheng#放风筝 feng_yuan#风鸢 zhi_yuan#纸鸢
🔫	shui_qiang#水枪 wan_ju_qiang#玩具枪 zi_shui_qiang#滋水枪
🎱	tai_qiu#台球 hei_ba#黑八
🔮	shui_jing_qiu#水晶球 zhan_bu#占卜
🪄	mo_fa_bang#魔法棒 mo_bang#魔棒
🎮	shou_bing#手柄 you_xi#游戏 you_xi_shou_bing#游戏手柄 shi_pin_you_xi_shou_bing#视频游戏手柄 dian_zi_you_xi_shou_bing#电子游戏手柄
🕹	cao_kong_gan#操控杆 you_xi_cao_kong_gan#游戏操控杆 yao_gan#摇杆 you_xi_yao_gan#游戏摇杆
🎰	lao_hu_ji#老虎机 du_chang#赌场 du_bo#赌博
🎲	du_bo#赌博 shai_zi#色子 tou_zi#骰子 jiu_zhuo_you_xi#酒桌游戏
🧩	pin_tu#拼图 pin_tu_kuai#拼图块 pin_kuai#拼块 pin_kuai_er#拼块儿
🧸	tai_di_xiong#泰迪熊 tai_di#泰迪
🪅	pi_na_ta#皮纳塔
🪩	jing_mian_qiu#镜面球 di_si_ke#迪斯科
🪆	e_luo_si_tao_wa#俄罗斯套娃 tao_wa#套娃
♠️	pu_ke#扑克 hei_tao#黑桃
♦️	pu_ke#扑克 fang_pian#方片 fang_ban#方板
♣️	pu_ke#扑克 mei_hua#梅花 cao_hua#草花
🃏	pu_ke#扑克 da_xiao_wang#大小王 dai_wang#大王 xiao_wang#小王 xiao_chou_pai#小丑牌 gui_pai#鬼牌 joker#joker
♟	guo_ji_xiang_qi_bing#国际象棋兵 guo_ji_xiang_qi#国际象棋
🀄	hong_zhong#红中 zhong#中 ma_jiang#麻将
🎴	hua_pu_ke_pai#花扑克牌 pu_ke_pai#扑克牌
🎭	biao_yan_yi_shu#表演艺术 mian_ju#面具
🖼	dai_hua_kuang_de_tu_pian#带画框的图片 dai_kuang_de_hua#带框的画 hua_kuang#画框 yi_fu_hua#一幅画
🎨	hua_hua#画画 tiao_se_ban#调色板 tiao_se_pan#调色盘 yi_shu#艺术 mei_shu#美术
🧵	xian_zhou#线轴
🪡	zhen#针 xiu_hua_zhen#绣花针 feng_ren_zhen#缝纫针
🧶	xian_tuan#线团 mao_xian#毛线 sha_xian#纱线 mao_xian_qiu#毛线球
🪢	sheng_zi#绳子 sheng_jie#绳结 da_jie#打结
👓	yan_jing#眼镜 jin_shi#近视 jin_shi_yan#近视眼
🥽	hu_mu_jing#护目镜 yong_jing#泳镜 you_yong_jing#游泳镜
🥼	shi_yan_shi_wai_yi#实验室外衣 bai_da_gua#白大褂 bai_da_gua_er#白大褂儿
🦺	an_quan_bei_xin#安全背心 jiu_sheng_yi#救生衣
👔	chen_shan_ling_dai#衬衫领带 ling_dai#领带 yi_fu#衣服
👕	chen_shan#衬衫 xu_shan#恤衫 duan_xiu#短袖 shang_yi#上衣 T_xu#T恤 T_xu_shan#T恤衫 nan_chen_shan#男衬衫 nan_shi_chen_shan#男士衬衫 han_shan#汗衫
👖	niu_zai_ku#牛仔裤 ku_zi#裤子
🧣	wei_jin#围巾
🧤	shou_tao#手套
🧥	wai_tao#外套 jia_ke#夹克 jia_ke_shan#夹克衫
🧦	wa_zi#袜子 duan_wa#短袜
👗	lian_yi_qun#连衣裙 zhang_qun#长裙 qun_zi#裙子
👘	he_fu#和服 yu_yi#浴衣
🥻	sha_li#纱丽
🩱	lian_ti_yong_yi#连体泳衣 yong_yi#泳衣 yong_zhuang#泳装
👙	yong_zhuang#泳装 san_dian_shi#三点式 bi_ji_ni#比基尼 nei_yi#内衣
🩲	san_jiao_ku#三角裤 nei_ku#内裤 di_ku#底裤
🩳	si_jiao_ku#四角裤 duan_ku#短裤
👚	nv_zhuang#女装 nv_shi_chen_shan#女士衬衫 nv_chen_shan#女衬衫
🪭	shan_zi#扇子 zhe_shan#折扇
👛	qian_bao#钱包 ling_qian_bao#零钱包 nv_shi_qian_bao#女士钱包
👜	shou_ti_bao#手提包 kua_bao#挎包 nv_bao#女包 bao_bao#包包
👝	shou_na_bao#手拿包 he_bao#荷包 pi_bao#皮包
🛍	gou_wu_dai#购物袋
🎒	shu_bao#书包 shuang_jian_bao#双肩包 bei_bao#背包 bei_nang#背囊
🩴	liang_xie#凉鞋 jia_zhi_liang_xie#夹趾凉鞋 sha_tan_liang_xie#沙滩凉鞋 tuo_xie#拖鞋 ren_zi_tuo#人字拖
👡	liang_xie#凉鞋 nv_shi_liang_xie#女式凉鞋 gao_gen_liang_xie#高跟凉鞋 gao_gen_er_liang_xie#高跟儿凉鞋
👞	pi_xie#皮鞋 nan_xie#男鞋
👟	wang_qiu_xie#网球鞋 pao_xie#跑鞋 yun_dong_xie#运动鞋 ban_xie#板鞋 ban_er_xie#板儿鞋 xiu_xian_xie#休闲鞋 xie_zi#鞋子
🥾	deng_shan_xie#登山鞋
🥿	ping_di_xie#平底鞋
👠	gao_gen_xie#高跟鞋 gao_gen_er#高跟儿 gao_gen_er_xie#高跟儿鞋 nv_xie#女鞋
🩰	ba_lei_wu_xie#芭蕾舞鞋 zu_jian_xie#足尖鞋
👢	gao_gen_xue#高跟靴 gao_gen_er_xue#高跟儿靴 nv_xue#女靴 xue_zi#靴子 zhang_xue#长靴
🪮	cha_shu#叉梳 shu_zi#梳子
👑	wang_guan#王冠 huang_guan#皇冠 huang_zu#皇族
👒	dai_hu_die_jie_de_mao_zi#带蝴蝶结的帽子 nv_mao#女帽 kuan_yan_mao#宽檐帽
🎩	mao_zi#帽子 li_mao#礼帽 gao_mao#高帽
🎓	si_fang_mao#四方帽 bi_ye_mao#毕业帽 xue_shi_mao#学士帽
🧢	bang_qiu_mao#棒球帽 ya_she_mao#鸭舌帽
🪖	jun_yong_tou_kui#军用头盔 tou_kui#头盔 jun_ren#军人 jun_kui#军盔
⛑️	an_quan_mao#安全帽 bai_shi_zi_tou_kui#白十字头盔 bai_shi_zi_an_quan_mao#白十字安全帽 shi_zi_an_quan_mao#十字安全帽 shi_zi_tou_kui#十字头盔
📿	nian_zhu#念珠
💄	kou_hong#口红 chun_gao#唇膏
💍	jie_zhi#戒指 zuan_jie#钻戒 qiu_hun_jie#求婚戒 ding_hun_jie#订婚戒 xing_zuan#星钻
💎	bao_shi#宝石 zuan_shi#钻石
🔇	yi_jing_yin_de_yang_sheng_qi#已静音的扬声器 yang_sheng_qi_guan_bi#扬声器关闭 jing_yin#静音
🔈	yang_sheng_qi#扬声器
🔉	yang_sheng_qi#扬声器 zhong_deng_yin_liang#中等音量 zhong_deng_yin_liang_de_yang_sheng_qi#中等音量的扬声器
🔊	yang_sheng_qi#扬声器 da_yin_liang#大音量 gao_yin_liang#高音量 gao_yin_liang_de_yang_sheng_qi#高音量的扬声器
📢	gong_gong_guang_bo#公共广播 la_ba#喇叭
📣	la_ba#喇叭 la_ba_tong#喇叭筒 da_la_ba#大喇叭
📯	you_zheng_la_ba#邮政喇叭
🔔	ling_dang#铃铛
🔕	jing_yin_ling_dang#静音铃铛 xiang_ling_guan_bi#响铃关闭 jin_zhi_xiang_ling#禁止响铃
🎼	yue_pu#乐谱 wu_xian_pu#五线谱
🎵	yin_fu#音符 yin_yue#音乐
🎶	yin_fu#音符 yin_yue#音乐
🎙	mai_ke_feng#麦克风 lu_yin_shi_mai_ke_feng#录音室麦克风 lu_yin_mai_ke_feng#录音麦克风
🎤	mai_ke_feng#麦克风
🎚	dian_ping_hua_kuai#电平滑块 hua_kuai#滑块
🎛	kong_zhi_xuan_niu#控制旋钮 xuan_niu#旋钮
🎧	tou_dai_shi_er_ji#头戴式耳机 er_ji#耳机
📻	shou_yin_ji#收音机 wu_xian_dian#无线电 dian_tai#电台
🎷	sa_ke_si#萨克斯 sa_ke_si_feng#萨克斯风 sa_ke_si_guan#萨克斯管 guan_xian_yue_qi#管弦乐器
🪗	shou_feng_qin#手风琴
🎸	ji_ta#吉他 dian_ji_ta#电吉他
🎹	yin_yue_jian_pan#音乐键盘 gang_qin#钢琴 gang_qin_an_jian#钢琴按键 gang_qin_jian#钢琴键 qin_jian#琴键
🎺	xiao_hao#小号
🎻	xiao_ti_qin#小提琴 ti_qin#提琴
🪕	ban_zhuo_qin#班卓琴
🥁	gu#鼓 da_gu#打鼓 qiao_gu#敲鼓
🪘	chang_gu#长鼓 kang_jia_gu#康加鼓
🪇	sha_chui#沙锤
🪈	di_zi#笛子 chang_di#长笛 shu_di#竖笛
📱	yi_dong_dian_hua#移动电话 shou_ji#手机 zhi_neng_shou_ji#智能手机
📲	lai_dian#来电 shou_ji_lai_dian#手机来电
☎️	dian_hua#电话 gu_ding_dian_hua#固定电话 gu_hua#固话 zuo_ji#座机
📞	dian_hua_ting_tong#电话听筒 dian_hua_tong#电话筒
📟	chuan_hu_ji#传呼机 hu_ji#呼机 xun_hu_ji#寻呼机
📠	chuan_zhen#传真 chuan_zhen_ji#传真机 fa_chuan_zhen#发传真
🔋	dian_chi#电池 dian_liang#电量 dian_yuan#电源 xu_dian_chi#蓄电池
🪫	dian_liang#电量 di_dian_liang#低电量 dian_liang_di#电量低 dian_chi_bu_zu#电池不足 dian_liang_bu_zu#电量不足
🔌	dian_yuan#电源 cha_tou#插头 dian_cha_tou#电插头 dian_yuan_cha_tou#电源插头
💻	bi_ji_ben_dian_nao#笔记本电脑 ge_ren_dian_nao#个人电脑 shou_ti_dian_nao#手提电脑 bi_dian#笔电
🖥	tai_shi_dian_nao#台式电脑 dian_nao#电脑 xian_shi_qi#显示器 xian_shi_ping#显示屏 ji_suan_ji#计算机
🖨	da_yin_ji#打印机 yin_shua_ji#印刷机
⌨️	jian_pan#键盘 dian_nao_jian_pan#电脑键盘
🖱	dian_nao_shu_biao#电脑鼠标 shu_biao#鼠标
🖲	gui_ji_qiu#轨迹球
💽	guang_pan#光盘 guang_die#光碟 mi_ni_guang_pan#迷你光盘 mi_ni_guang_die#迷你光碟 dian_nao_guang_pan#电脑光盘
💾	ruan_pan#软盘
💿	CD#CD
📀	DVD#DVD
🧮	suan_pan#算盘 da_suan_pan#打算盘
🎥	she_xiang_ji#摄像机 she_lu_ji#摄录机 she_ying_ji#摄影机 dian_ying_she_ying_ji#电影摄影机
📹	she_xiang_ji#摄像机
🎞	dian_ying_jiao_pian#电影胶片 jiao_juan#胶卷 jiao_pian#胶片 dian_ying#电影 fei_lin#菲林
📽	dian_ying_fang_ying_ji#电影放映机 fang_ying_ji#放映机 shang_ying#上映
🎬	chang_ji#场记 chang_ji_ban#场记板 da_ban#打板 pai_dian_ying#拍电影 action#action
📺	dian_shi#电视 dian_shi_ji#电视机 TV#TV
📷	xiang_ji#相机 ka_pian_xiang_ji#卡片相机 zhao_xiang_ji#照相机
📸	kai_shan_guang_deng_de_xiang_ji#开闪光灯的相机 pai_zhao#拍照 shan_guang_deng#闪光灯 shan_guang_deng_da_kai#闪光灯打开
📼	lu_xiang_dai#录像带 lu_ying_dai#录影带 ci_dai#磁带
🔍	fang_da_jing#放大镜
🔎	fang_da_jing#放大镜
🕯	la_zhu#蜡烛 zhu_guang#烛光 zhu_huo#烛火
💡	deng_pao#灯泡 dian_deng_pao#电灯泡 bai_chi_deng#白炽灯 deng#灯 dian_deng#电灯
🔦	shou_dian#手电 shou_dian_tong#手电筒 dian_tong#电筒 zhao_ming#照明
🏮	ju_jiu_wu_deng_long#居酒屋灯笼 ju_jiu_wu#居酒屋 deng_long#灯笼 hong_deng_long#红灯笼 da_hong_deng_long#大红灯笼 da_hong_deng_long_gao_gao_gua#大红灯笼高高挂
🪔	you_deng#油灯
📔	bi_ji_ben#笔记本 ji_shi_ben#记事本 ri_ji_ben#日记本
📓	bi_ji_ben#笔记本 ji_shi_ben#记事本 ri_ji_ben#日记本
📒	bi_ji_ben#笔记本 ji_shi_ben#记事本 ri_ji_ben#日记本 zhang_bu#账簿
📕	hong_se_de_shu#红色的书 hong_se_shu_ben#红色书本 xiao_hong_shu#小红书 di_yi_juan#第一卷
📖	shu#书 tu_shu#图书 shu_ben#书本 shu_ji#书籍 da_kai_de_shu#打开的书 da_kai_de_shu_ben#打开的书本
📚	shu#书 tu_shu#图书 shu_ben#书本 shu_ji#书籍
📗	lv_se_de_shu#绿色的书 lv_se_shu_ben#绿色书本 jiao_ke_shu#教科书 di_er_juan#第二卷
📘	lan_se_de_shu#蓝色的书 lan_se_shu_ben#蓝色书本 di_san_juan#第三卷
📙	cheng_se_de_shu#橙色的书 cheng_se_shu_ben#橙色书本 ju_se_de_shu#橘色的书 ju_se_shu_ben#橘色书本 di_si_juan#第四卷
📃	dai_juan_bian_de_zhi#带卷边的纸 juan_bian_de_zhi#卷边的纸
📜	juan_zhou#卷轴
📄	zhi#纸 wen_shu#文书 wen_jian#文件
📰	bao_zhi#报纸 xin_wen#新闻
🗞	juan_qi_de_bao_zhi#卷起的报纸 bao_zhi_juan#报纸卷
📑	shu_qian_biao_qian#书签标签 biao_qian_ye#标签页 ye_qian#页签
🔖	shu_qian#书签
🏷	biao_qian#标签 diao_pai#吊牌
💰	qian#钱 jin_qian#金钱 qian_dai#钱袋 gong_zi#工资 jiang_jin#奖金 money#money
🪙	ying_bi#硬币 gang_beng#钢镚 gang_beng_er#钢镚儿 qian_bi#钱币
💸	zhang_chi_bang_de_qian#长翅膀的钱 zhang_le_chi_bang_de_qian#长了翅膀的钱 chi_bang_qian#翅膀钱 hua_qian#花钱 qian_fei_le#钱飞了
💳	xin_yong_ka#信用卡 jie_ji_ka#借记卡 dai_ji_ka#贷记卡 yin_hang_ka#银行卡
🧾	ping_ju#凭据 fa_piao#发票 shou_ju#收据 zhang_dan#账单
✉️	xin_jian#信件 xin_feng#信封 xie_xin#写信
📧	dian_zi_you_jian#电子邮件 you_jian#邮件 email#email
📨	lai_xin#来信 shou_dao_lai_xin#收到来信 shou_dao_you_jian#收到邮件 xin_you_jian#新邮件
📥	shou_dao_you_jian#收到邮件 shou_jian#收件 shou_jian_xiang#收件箱 shou_xin#收信 shou_you_jian#收邮件
📤	fa_jian#发件 fa_jian_xiang#发件箱 fa_xin#发信 fa_you_jian#发邮件
📦	bao_guo#包裹 kuai_di#快递 zhi_xiang#纸箱 zhi_xiang_zi#纸箱子 xiang_zi#箱子 da_bao#打包 he_zi#盒子
📪	xin_xiang#信箱
📮	you_tong#邮筒 you_xiang#邮箱
🗳	tou_piao#投票 tou_piao_xiang#投票箱 xuan_piao#选票
✏️	qian_bi#铅笔
✒️	gang_bi#钢笔
🖋	gang_bi#钢笔
🖊	yuan_zhu_bi#圆珠笔
🖌	hua_bi#画笔
🖍	la_bi#蜡笔
📝	bei_wang_lu#备忘录 bei_wang#备忘 bian_jian#便笺
💼	gong_wen_bao#公文包 gong_shi_bao#公事包 shang_ban#上班 gong_zuo#工作
📁	wen_jian_jia#文件夹
📂	wen_jian_jia#文件夹
🗂	ka_pian_suo_yin_fen_ge_ka#卡片索引分隔卡
📅	ri_li#日历
📆	shou_si_ri_li#手撕日历
🗒	xian_quan_bi_ji_ben#线圈笔记本 xian_quan_ben#线圈本
🗓	xian_quan_ri_li#线圈日历
📇	ka_pian_suo_yin#卡片索引 ka_pai_suo_yin#卡牌索引
📈	shang_sheng#上升 shang_zhang#上涨 bao_zhang#暴涨
📉	xia_jiang#下降 xia_die#下跌 bao_die#暴跌
📊	tu_biao#图表 tiao_xing_tu#条形图 zhu_xing_tu#柱形图 zhu_zhuang_tu#柱状图
📋	xie_zi_ban#写字板 jian_tie_ban#剪贴板
📌	tu_ding#图钉
📍	yuan_tu_ding#圆图钉 da_tou_zhen#大头针
📎	hui_xing_zhen#回形针 qu_bie_zhen#曲别针
🖇	hui_xing_zhen#回形针 qu_bie_zhen#曲别针
📏	zhi_chi#直尺 chi_zi#尺子
📐	san_jiao_chi#三角尺 san_jiao_ban#三角板
✂️	jian_dao#剪刀 jian_zi#剪子
🗃	ka_pian_he#卡片盒 ka_pian_cun_dang_he#卡片存档盒
🗄	wen_jian_gui#文件柜
🗑	fei_zhi_lou#废纸篓 la_ji_tong#垃圾桶 la_ji_lou#垃圾篓 la_ji#垃圾
🔒	suo#锁 he_shang_de_suo#合上的锁 men_suo#门锁 suo_tou#锁头 shang_suo#上锁 suo_shang#锁上 suo_zhu#锁住
🔓	suo#锁 men_suo#门锁 suo_tou#锁头 da_kai_de_suo#打开的锁 jie_suo#解锁 kai_suo#开锁
🔐	jie_suo#解锁 yi_suo_shang_dan_gua_zhe_yao_shi_de_suo#已锁上但挂着钥匙的锁 mi_yao#密钥
🔏	dai_mo_shui_bi_de_suo#带墨水笔的锁 yin_mi#隐秘
🔑	yao_shi#钥匙
🗝	yao_shi#钥匙 gu_lao_de_yao_shi#古老的钥匙 lao_yao_shi#老钥匙 jiu_yao_shi#旧钥匙 lao_shi_yao_shi#老式钥匙 fu_gu_yao_shi#复古钥匙
🔨	chui_zi#锤子 tie_chui#铁锤
🪓	fu_zi#斧子 fu_tou#斧头
⛏️	tie_gao#铁镐 chu_tou#锄头 he_zui_chu#鹤嘴锄
⚒️	chui_zi_yu_gao#锤子与镐 chui_zi_he_gao#锤子和镐
🛠	chui_zi_he_ban_shou#锤子和扳手 chui_zi_yu_ban_shou#锤子与扳手 chui_zi_ban_shou#锤子扳手 gong_ju#工具
🗡	bi_shou#匕首 duan_dao#短刀 duan_jian#短剑
⚔️	shuang_jian#双剑 shuang_jian_jiao_cha#双剑交叉 zhan_dou#战斗 kai_zhan#开战 kai_shi_zhan_dou#开始战斗 fight#fight jian#剑 jian_ren#剑刃 wu_qi#武器
💣	zha_dan#炸弹 boom#boom
🪃	hui_xuan_biao#回旋镖 fei_xuan_biao#飞旋镖 hui_li_bang#回力棒 hui_li_biao#回力镖 fei_qu_lai_qi#飞去来器 hui_fei_bang#回飞棒
🏹	gong_jian#弓箭 gong_he_jian#弓和箭
🛡	dun_pai#盾牌 fang_ju#防具
🪚	shou_ju#手锯 ju_zi#锯子
🔧	ban_shou#扳手 luo_si_ban_shou#螺丝扳手
🪛	luo_si_dao#螺丝刀
🔩	luo_mu_ji_luo_shuan#螺母及螺栓 luo_mu_yu_luo_shuan#螺母与螺栓 luo_mu_he_luo_shuan#螺母和螺栓 luo_mu_luo_shuan#螺母螺栓
⚙️	chi_lun#齿轮
🗜	jia_qian#夹钳
⚖️	tian_ping#天平
🦯	bai_shou_zhang#白手杖 shou_zhang#手杖
🔗	lian_jie#链接 link#link
⛓️	lian_tiao#链条 tie_lian#铁链 suo_lian#锁链 lian_zi#链子 tie_lian_zi#铁链子
🪝	gou_zi#钩子 gua_gou#挂钩 tie_gou#铁钩 wan_gou#弯钩
🧰	gong_ju_xiang#工具箱
🧲	ci_tie#磁铁 xi_tie_shi#吸铁石 ci_li#磁力 ci_shi#磁石
🪜	ti_zi#梯子 pa_ti#爬梯 pa_ti_zi#爬梯子 da_ti_zi#搭梯子 fan_qiang#翻墙 ke_xue_shang_wang#科学上网 mo_fa_shang_wang#魔法上网
⚗️	zheng_liu_qi#蒸馏器
🧪	shi_guan#试管
🧫	pei_yang_min#培养皿
🧬	DNA#DNA tuo_yang_he_tang_he_suan#脱氧核糖核酸 ji_yin#基因
🔬	xian_wei_jing#显微镜
🔭	wang_yuan_jing#望远镜
📡	wei_xing_tian_xian#卫星天线 tian_xian#天线 jie_shou_tian_xian#接收天线
💉	zhu_she_qi#注射器 da_zhen#打针
🩸	xue#血 xue_di#血滴 di_xue#滴血 xue_ye#血液
💊	yao_wan#药丸 jiao_nang#胶囊
🩹	chuang_ke_tie#创可贴 chuang_kou_tie#创口贴
🩼	guai_zhang#拐杖
🩺	ting_zhen_qi#听诊器
🩻	X_she_xian#X射线 X_guang#X光 X_guang_pian#X光片 pai_pian#拍片 xiong_tou#胸透 xiong_pian#胸片
🚪	men#门 fang_men#房门 men_zi#门子
🛗	dian_ti#电梯 sheng_jiang_ji#升降机
🪞	jing_zi#镜子 mo_jing#魔镜
🪟	chuang_hu#窗户
🛏	chuang#床
🛋	sha_fa_he_deng#沙发和灯 sha_fa#沙发
🪑	yi_zi#椅子 deng_zi#凳子
🚽	ma_tong#马桶
🪠	ma_tong_xi#马桶吸 chuai_zi#搋子 ma_tong_chuai#马桶搋 ma_tong_chuai_zi#马桶搋子 shui_ba_zi#水拔子 pi_lao_hu#皮老虎 ma_tong_xi_pan#马桶吸盘 xi_ba#吸把 ma_tong_xi_ba#马桶吸把 ma_tong_shu_tong_qi#马桶疏通器 tong_tong_le#通通乐 ma_tong_sai#马桶塞 ma_tong_chou_zi#马桶抽子
🚿	lin_yu#淋浴 pen_tou#喷头
🛁	yu_gang#浴缸
🪤	bu_shu_qi#捕鼠器
🪒	ti_dao#剃刀 ti_xu_dao#剃须刀 gua_hu_dao#刮胡刀 shou_dong_gua_hu_dao#手动刮胡刀
🧴	ru_ye#乳液 ru_ye_ping#乳液瓶 hu_fu_shuang#护肤霜 xi_fa_shui#洗发水 mu_yu_lu#沐浴露 xi_fa_lu#洗发露
🧷	an_quan_bie_zhen#安全别针 bie_zhen#别针 kou_zhen#扣针
🧹	sao_zhou#扫帚 sao_ba#扫把 tiao_zhou#笤帚
🧺	lan_zi#篮子 zhu_lan#竹篮 cai_lan#菜篮 cai_lan_zi#菜篮子
🧻	wei_sheng_zhi#卫生纸 juan_zhi#卷纸 zhi_jin#纸巾
🪣	shui_tong#水桶 yuan_tong#圆桶
🧼	fei_zao#肥皂 xiang_zao#香皂
🫧	pao_pao#泡泡 qi_pao#气泡
🪥	ya_shua#牙刷 shua_ya#刷牙
🧽	hai_mian#海绵 qing_xi#清洗
🧯	mie_huo_qi#灭火器
🛒	gou_wu_che#购物车 shou_tui_che#手推车
🚬	yan#烟 xiang_yan#香烟 juan_yan#卷烟 zhi_yan#纸烟 xi_yan#吸烟 chou_yan#抽烟 kao_yan#烤烟 dian_yan#点烟 lai_yi_gen#来一根 lai_yi_gen_er#来一根儿 yi_zhi_yan#一支烟
⚰️	guan_cai#棺材 ling_jiu#灵柩
🪦	mu_bei#墓碑 fen_mu#坟墓
⚱️	gu_hui_he#骨灰盒 gu_hui_gang#骨灰缸 feng_jin_weng#奉金瓮 huang_jin_weng#黄金瓮 jin_weng#金瓮 jin_ta#金塔 gu_weng#骨瓮 gu_tan#骨坛
🧿	e_mo_zhi_yan#恶魔之眼 e_mo_yan#恶魔眼 e_mo_de_yan#恶魔的眼
🪬	fa_di_ma#法蒂玛 fa_di_ma_zhi_shou#法蒂玛之手
🗿	fu_huo_dao#复活岛 fu_huo_jie_dao#复活节岛 fu_huo_jie_dao_shi_xiang#复活节岛石像 mo_ai_shi_xiang#摩艾石像
🪧	biao_yu#标语 bu_gao#布告 bu_gao_pai#布告牌 biao_yu_pai#标语牌
🪪	shen_fen_zheng#身份证 ID#ID jia_zhao#驾照 zhi_zhao#执照 zheng_jian#证件 zheng_zhao#证照
🆔	shen_fen_zheng#身份证 ID#ID shen_fen#身份
🏧	ATM#ATM qu_kuan_ji#取款机 ti_kuan_ji#提款机
🚮	la_ji_ru_lou_biao_zhi#垃圾入篓标志 la_ji_ru_lou#垃圾入篓 la_ji_diu_qi_chu#垃圾丢弃处 diu_la_ji#丢垃圾 reng_la_ji#扔垃圾 dao_la_ji#倒垃圾
🚰	shui_long_tou#水龙头 yin_yong_shui#饮用水 zhi_yin_shui#直饮水 yin_shui_chu#饮水处
🚹	nan_shi_biao_zhi#男士标志 nan_shi_fu_hao#男士符号 nan_shi#男士 nan_ce#男厕 nan_ce_suo#男厕所 nan_xi_shou_jian#男洗手间
🚺	nv_shi_biao_zhi#女士标志 nv_shi_fu_hao#女士符号 nv_shi#女士 nv_ce#女厕 nv_ce_suo#女厕所 nv_xi_shou_jian#女洗手间
🚻	wei_sheng_jian#卫生间 ce_suo#厕所 xi_shou_jian#洗手间 guan_xi_shi#盥洗室
🚾	wei_sheng_jian#卫生间 ce_suo#厕所 WC#WC
🛂	hu_zhao_jian_cha_chu#护照检查处 an_jian#安检 hu_zhao_jian_cha#护照检查 jian_cha_hu_zhao#检查护照
🛃	hai_guan#海关 hai_guan_jian_cha#海关检查
🛄	xing_li_ling_qu_chu#行李领取处 xing_li_ling_qu#行李领取 ling_qu_xing_li#领取行李
🛅	xing_li_ji_cun_chu#行李寄存处 xing_li_ji_cun#行李寄存 ji_cun_xing_li#寄存行李
⚠️	jing_gao#警告 zhu_yi#注意 wei_xian#危险 yu_jing#预警
🚸	xue_tong_guo_jie#学童过街 er_tong_guo_jie#儿童过街 zhu_yi_er_tong#注意儿童 dang_xin_er_tong#当心儿童
⛔	jin_zhi_shi_ru#禁止驶入 jin_zhi_tong_xing#禁止通行 qing_wu_ru_nei#请勿入内 qing_wu_shi_ru#请勿驶入
🚫	jin_zhi#禁止 yan_jin#严禁 bu_zhun#不准 bu_xu#不许
🈲	jin_zhi#禁止 yan_jin#严禁 jin#禁
🚳	jin_zhi_qi_che#禁止骑车 jin_zhi_qi_xing#禁止骑行 jin_zhi_zi_xing_che#禁止自行车
🚭	jin_zhi_xi_yan#禁止吸烟 qing_wu_xi_yan#请勿吸烟 jin_yan#禁烟
🚯	wu_reng_la_ji#勿扔垃圾 wu_diu_la_ji#勿丢垃圾 qing_wu_luan_diu_la_ji#请勿乱丢垃圾 qing_wu_luan_reng_la_ji#请勿乱扔垃圾 jin_diu_la_ji#禁丢垃圾 jin_zhi_reng_la_ji#禁止扔垃圾 jin_zhi_diu_la_ji#禁止丢垃圾 jin_zhi_luan_reng_la_ji#禁止乱扔垃圾 jin_zhi_luan_diu_la_ji#禁止乱丢垃圾
🚱	fei_yin_yong_shui#非饮用水 qing_wu_yin_yong#请勿饮用
🚷	jin_zhi_xing_ren#禁止行人 jin_zhi_xing_ren_tong_xing#禁止行人通行
📵	jin_zhi_shi_yong_shou_ji#禁止使用手机 jin_zhi_da_dian_hua#禁止打电话
🔞	shi_ba_jin#十八禁 wei_cheng_nian#未成年 wei_cheng_nian_bu_yi#未成年不宜 cheng_ren#成人
☢️	fang_she_xing#放射性 fu_she#辐射
☣️	sheng_wu_wei_hai#生物危害 sheng_hua_wei_ji#生化危机 wen_yi_gong_si#瘟疫公司
⬆️	shang#上 shang_jian_tou#上箭头 xiang_shang_jian_tou#向上箭头
↑	shang#上 shang_jian_tou#上箭头
↗️	you_shang#右上 you_shang_jian_tou#右上箭头
↗	you_shang#右上 you_shang_jian_tou#右上箭头
➡️	you#右 you_jian_tou#右箭头 xiang_you_jian_tou#向右箭头
→	you#右 you_jian_tou#右箭头
↘️	you_xia#右下 you_xia_jian_tou#右下箭头
↘	you_xia#右下 you_xia_jian_tou#右下箭头
⬇️	xia#下 xia_jian_tou#下箭头 xiang_xia_jian_tou#向下箭头
↓	xia#下 xia_jian_tou#下箭头
↙️	zuo_xia#左下 zuo_xia_jian_tou#左下箭头
↙	zuo_xia#左下 zuo_xia_jian_tou#左下箭头
⬅️	zuo#左 zuo_jian_tou#左箭头 xiang_zuo_jian_tou#向左箭头
←	zuo#左 zuo_jian_tou#左箭头
↖️	zuo_shang#左上 zuo_shang_jian_tou#左上箭头
↖	zuo_shang#左上 zuo_shang_jian_tou#左上箭头
↕️	shang_xia#上下 shang_xia_jian_tou#上下箭头
↕	shang_xia#上下 shang_xia_jian_tou#上下箭头
↔️	zuo_you#左右 zuo_you_jian_tou#左右箭头
↔︎	zuo_you#左右 zuo_you_jian_tou#左右箭头
↩️	hui_che#回车
🔃	chong_xin_zai_ru#重新载入 shun_shi_zhen#顺时针 shun_shi_zhen_fang_xiang#顺时针方向 shun_shi_zhen_chui_zhi_jian_tou#顺时针垂直箭头
🔄	ni_shi_zhen#逆时针 ni_shi_zhen_fang_xiang#逆时针方向 ni_shi_zhen_chui_zhi_jian_tou#逆时针垂直箭头
🔙	back#back tui_hui#退回
🔚	end#end jie_shu#结束
🔛	on#on kai_qi#开启
🔜	soon#soon ma_shang#马上
🔝	top#top
🛐	dao_gao#祷告
⚛️	yuan_zi_fu_hao#原子符号 yuan_zi#原子 atom#atom
🕉	ao_mu#奥姆 ao_mu_fu_hao#奥姆符号
✡️	da_wei_zhi_xing#大卫之星
☸️	fa_lun#法轮
☯️	tai_ji#太极 yin_yang#阴阳
✝️	shi_zi_jia#十字架 ji_du#基督 ji_du_jiao#基督教
☦️	dong_zheng_jiao#东正教 dong_zheng_jiao_shi_zi_jia#东正教十字架
☪️	xing_yue#星月
☮️	he_ping#和平 he_ping_fu_hao#和平符号 he_ping_biao_zhi#和平标志 shi_jie_he_ping#世界和平 peace#peace
🕎	guang_ming_jie#光明节
🔯	liu_jiao_xing#六角星 liu_mang_xing#六芒星 mo_fa_zhen#魔法阵
🪯	xi_ke#锡克 xi_ke_jiao#锡克教 kan_da#坎达 kan_da_fu_hao#坎达符号
♈	bai_yang_zuo#白羊座
♉	jin_niu_zuo#金牛座
♊	shuang_zi_zuo#双子座
♋	ju_xie_zuo#巨蟹座
♌	shi_zi_zuo#狮子座
♍	chu_nv_zuo#处女座
♎	tian_cheng_zuo#天秤座
♏	tian_xie_zuo#天蝎座
♐	she_shou_zuo#射手座
♑	mo_jie_zuo#摩羯座
♒	shui_ping_zuo#水瓶座
♓	shuang_yu_zuo#双鱼座
⛎	she_fu_zuo#蛇夫座
🔀	sui_ji_bo_fang#随机播放 sui_ji#随机 jiao_cha_jian_tou#交叉箭头
🔁	xun_huan_bo_fang#循环播放
🔂	dan_qu_xun_huan#单曲循环
▶️	bo_fang#播放 kai_shi#开始 kai_shi_bo_fang#开始播放
⏩	kuai_jin#快进 kuai_jin_fu_hao#快进符号
⏭️	xia_yi_shou#下一首
⏯️	bo_fang_zan_ting#播放暂停
◀️	dao_tui#倒退 dao_tui_an_niu#倒退按钮
⏪	kuai_tui#快退 kuai_tui_fu_hao#快退符号
⏮️	shang_yi_shou#上一首
🔼	shang_san_jiao#上三角 diao_gao#调高
⏫	kuai_shang#快上
🔽	xia_san_jiao#下三角 diao_di#调低
⏬	kuai_xia#快下
⏸️	zan_ting#暂停
⏹️	ting_zhi#停止
⏺️	lu_yin#录音 lu_yin_an_niu#录音按钮 kai_shi_lu_yin#开始录音 lu_xiang#录像 lu_xiang_an_niu#录像按钮 kai_shi_lu_xiang#开始录像
⏏️	dan_chu#弹出 tui_chu#推出 dan_chu_an_niu#弹出按钮 tui_chu_an_niu#推出按钮
🎦	dian_ying_yuan#电影院
🔅	liang_du#亮度 liang_du_di#亮度低 di_liang_du#低亮度
🔆	liang_du#亮度 liang_du_gao#亮度高 gao_liang_du#高亮度
📶	xin_hao_qiang_du_tiao#信号强度条 xin_hao_qiang_du#信号强度 xin_hao#信号 shou_ji_xin_hao#手机信号
🛜	wireless#wireless WiFi#WiFi Wi-Fi#Wi-Fi wu_xian_ju_yu_wang#无线局域网 wu_xian_wang#无线网 wu_xian_wang_luo#无线网络 wang_luo#网络
📳	zhen_dong#震动 zhen_dong_mo_shi#振动模式
📴	guan_ji#关机 shou_ji_guan_ji#手机关机 guan_bi_shou_ji#关闭手机
♀	nv#女 nv_xing#女性
♂	nan#男 nan_xing#男性
⚧	kua_xing_bie#跨性别 kua_xing_bie_fu_hao#跨性别符号 bian_xing#变性
🏳️‍⚧️	kua_xing_bie#跨性别 kua_xing_bie_qi#跨性别旗
✖️	cheng#乘 cheng_yi#乘以 cheng_hao#乘号
➕	jia#加 jia_hao#加号
➖	jian#减 jian_hao#减号
➗	chu#除 chu_yi#除以 chu_hao#除号
🟰	deng_yu#等于 deng_hao#等号 deng_yu_hao#等于号 cu_deng_hao#粗等号
‼️	shuang_gan_tan_hao#双感叹号 shuang_jing_tan_hao#双惊叹号 shuang_tan_hao#双叹号 lia_tan_hao#俩叹号
⁉️	yi_wen_jing_tan_hao#疑问惊叹号 yi_wen_jing_tan#疑问惊叹 tan_wen_hao#叹问号 tan_hao_wen_hao#叹号问号 gan_tan_hao_wen_hao#感叹号问号 jing_wen#惊问
❓	wen_hao#问号
❔	wen_hao#问号 bai_se_wen_hao#白色问号 bai_wen_hao#白问号
❗	gan_tan_hao#感叹号 jing_tan_hao#惊叹号 tan_hao#叹号
❕	gan_tan_hao#感叹号 jing_tan_hao#惊叹号 tan_hao#叹号 bai_se_gan_tan_hao#白色感叹号 bai_se_jing_tan_hao#白色惊叹号 bai_se_tan_hao#白色叹号 bai_gan_tan_hao#白感叹号 bai_jing_tan_hao#白惊叹号 bai_tan_hao#白叹号
〰️	bo_lang_xing_po_zhe_hao#波浪型破折号 bo_lang_xian#波浪线
💱	dui_huan#兑换 wai_hui#外汇 huan_hui#换汇 hui_lv#汇率 liu_tong#流通 huo_bi_dui_huan#货币兑换 chu_guo#出国
⚕	yi_liao_biao_zhi#医疗标志 yi_liao_fu_hao#医疗符号 she_zhang#蛇杖 a_si_ke_lei_bi_e_si#阿斯克勒庇俄斯 dan_she_zhi_zhang#单蛇之杖
♻️	huan_bao#环保 xun_huan#循环 xun_huan_zai_sheng#循环再生 xun_huan_li_yong#循环利用 hui_shou#回收
⚜️	bai_he_hua_shi#百合花饰 bai_he_hua#百合花 yuan_wei_hua#鸢尾花
🔱	san_cha_ji#三叉戟 san_cha_ji_biao_zhi#三叉戟标志
📛	xing_ming_pai#姓名牌
🔰	ri_ben_xin_shou_jia_shi_biao_zhi#日本新手驾驶标志 ri_ben_chu_xue_zhe_biao_zhi#日本初学者标志
⭕	dui#对 da_dui#答对 da_dui_le#答对了 zheng_que#正确 yuan_quan#圆圈
✅	dui#对 da_dui#答对 da_dui_le#答对了 zheng_que#正确 dui_hao#对号 dui_gou#对钩
✔	dui#对 zheng_que#正确 dui_hao#对号 dui_gou#对钩 gou_xuan#勾选
☑️	an_niu#按钮 gou_xuan#勾选 fu_xuan#复选 fu_xuan_kuang#复选框 fu_xuan_an_niu#复选按钮 da_gou#打钩 da_dui_gou#打对钩
🔘	an_niu#按钮 dan_xuan#单选 dan_xuan_kuang#单选框 dan_xuan_an_niu#单选按钮
❌	cuo#错 da_cuo#答错 da_cuo_le#答错了 cuo_hao#错号 cuo_wu#错误 cha#叉 cha_cha#叉叉 hua_cha#画叉
❎	cuo#错 da_cuo#答错 da_cuo_le#答错了 cuo_hao#错号 cuo_wu#错误 cha#叉 cha_cha#叉叉 hua_cha#画叉
➰	juan_qu_huan#卷曲环
➿	shuang_juan_qu_huan#双卷曲环
〽️	ge_ji_hao#歌记号
✳️	ba_lun_fu_xing_hao#八轮辐星号
✴️	ba_jiao_xing#八角星
©	ban_quan#版权 ban_quan_fu_hao#版权符号 Copyright#Copyright
®	zhu_ce#注册 zhu_ce_biao_ji#注册标记 zhu_ce_shang_biao_fu_hao#注册商标符号 zhu_ce_shang_biao#注册商标 Registered#Registered
™	shang_biao#商标 shang_biao_fu_hao#商标符号 TM#TM
#️⃣	jing_hao#井号 jing_hao_jian#井号键
*️⃣	xing_hao#星号 xing_hao_jian#星号键
0️⃣	ling#零
1️⃣	yi#一
2️⃣	er#二
3️⃣	san#三
4️⃣	si#四
5️⃣	wu#五
6️⃣	liu#六
7️⃣	qi#七
8️⃣	ba#八
9️⃣	jiu#九
🔟	shi#十
🔠	ABCD#ABCD ying_wen#英文 ying_yu#英语 la_ding_wen#拉丁文 da_xie#大写 ying_wen_da_xie#英文大写 da_xie_zi_mu#大写字母
🔡	ying_wen#英文 ying_yu#英语 la_ding_wen#拉丁文 abcd#abcd xiao_xie#小写 ying_wen_xiao_xie#英文小写 xiao_xie_zi_mu#小写字母
🔢	shu_zi#数字 yi_er_san_si#一二三四
🔣	fu_hao#符号 zi_fu#字符
🔤	abc#abc
🅰️	xue_xing#血型 A#A A_xing#A型 A_xing_xue#A型血 A_xue_xing#A血型
🆎	xue_xing#血型 AB#AB AB_xing#AB型 AB_xing_xue#AB型血 AB_xue_xing#AB血型
🅱️	xue_xing#血型 B#B B_xing#B型 B_xing_xue#B型血 B_xue_xing#B血型
🅾️	xue_xing#血型 O#O O_xing#O型 O_xing_xue#O型血 O_xue_xing#O血型
🆑	qing_chu#清除 qing_li#清理 clear#clear
🆒	cool#cool ku#酷 chao_ku#超酷 hen_ku#很酷 te_bie_ku#特别酷
🆓	free#free mian_fei#免费 zi_you#自由
ℹ️	zi_xun#资讯 info#info information#information
🆕	new#new xin#新 xin_de#新的 xin_jian#新建 quan_xin#全新
🆖	NG#NG chong_pai#重拍
🅿️	P#P ting_che#停车 ting_che_chang#停车场 ting_che_an_niu#停车按钮 bo_che#泊车 parking#parking
🆘	SOS#SOS qiu_jiu_xin_hao#求救信号 qiu_jiu_xun_hao#求救讯号 jiu_ming#救命 jiu_wo#救我 jiu_jiu_wo#救救我 qiu_jiu#求救
🆙	up#up ding#顶 sheng_ji#升级
🆚	Vs.#Vs. bi#比 dui_jue#对决 dui_kang#对抗 dui_zhan#对战 bi_sai#比赛
🈁	zhe_li#这里
🈂️	fu_wu_fei#服务费
🈷️	yue#月
🈶	you#有 you_liao#有料 shou_fei#收费
🈯	zhi#指
🉐	de#得 tao_jia_huan_jia#讨价还价
🈹	ge#割 da_zhe#打折
🈚️	wu#无 mei_you#没有
🈸	shen#申 shen_qing#申请
🈴	he#合 he_ge#合格
🈳	kong#空 kong_wei#空位
㊗️	zhu#祝 zhu_fu#祝福
🈺	ying#营 ying_ye#营业 kai_men_ying_ye#开门营业
🈵	man#满 man_zuo#满座 man_le#满了 mei_you_kong_wei#没有空位
🔴	hong_se#红色
🟥	hong_se#红色
🟠	cheng_se#橙色 ju_se#橘色 ju_huang_se#橘黄色
🟧	cheng_se#橙色 ju_se#橘色 ju_huang_se#橘黄色
🟡	huang_se#黄色
🟨	huang_se#黄色
🟢	lv_se#绿色
🟩	lv_se#绿色
🔵	lan_se#蓝色
🟦	lan_se#蓝色
🟣	zi_se#紫色
🟪	zi_se#紫色
🟤	zong_se#棕色
🟫	zong_se#棕色
⚫	yuan_xing#圆形 wei_qi#围棋 hei_bai_qi#黑白棋 hei_se#黑色 hei_zi#黑子 hei_qi#黑棋 hei_dian#黑点 xiao_hei_dian#小黑点 xiao_hei_dian_er#小黑点儿
⚪	yuan_xing#圆形 wei_qi#围棋 hei_bai_qi#黑白棋 bai_se#白色 bai_zi#白子 bai_qi#白棋 bai_dian#白点 xiao_bai_dian#小白点 xiao_bai_dian_er#小白点儿 yuan_xiao#元宵 tang_yuan#汤圆 xue_qiu#雪球 xiao_yuan_dian#小圆点 xiao_yuan_dian_er#小圆点儿
⬛	hei_se#黑色 zheng_fang_xing#正方形 fang_kuai#方块 fang_xing#方形 ju_xing#矩形 hei_kuang#黑框 xiao_hei_kuang#小黑框
⬜	bai_se#白色 zheng_fang_xing#正方形 fang_kuai#方块 fang_xing#方形 ju_xing#矩形 bai_kuang#白框 xiao_bai_kuang#小白框
◼	zhong_fang_kuai#中方块 zhong_zheng_fang_xing#中正方形 bai_se_zhong_fang_kuai#白色中方块 zhong_deng_fang_kuai#中等方块 zhong_deng_zheng_fang_xing#中等正方形 bai_se_zhong_deng_fang_kuai#白色中等方块
◻	zhong_fang_kuai#中方块 zhong_zheng_fang_xing#中正方形 zhong_deng_fang_kuai#中等方块 zhong_deng_zheng_fang_xing#中等正方形 hei_se_zhong_fang_kuai#黑色中方块 hei_se_zhong_deng_fang_kuai#黑色中等方块
◾	da_fang_kuai#大方块 da_zheng_fang_xing#大正方形 bai_se_da_fang_kuai#白色大方块
◽	da_fang_kuai#大方块 da_zheng_fang_xing#大正方形 hei_se_da_fang_kuai#黑色大方块
▪	xiao_fang_kuai#小方块 xiao_zheng_fang_xing#小正方形 bai_se_xiao_fang_kuai#白色小方块
▫	xiao_fang_kuai#小方块 xiao_zheng_fang_xing#小正方形 hei_se_xiao_fang_kuai#黑色小方块
🔶	ling_xing#菱形 da_ling_xing#大菱形 cheng_se_ling_xing#橙色菱形 ju_se_ling_xing#橘色菱形 ju_huang_se_ling_xing#橘黄色菱形 cheng_se_da_ling_xing#橙色大菱形 ju_se_da_ling_xing#橘色大菱形 ju_huang_se_da_ling_xing#橘黄色大菱形
🔷	ling_xing#菱形 da_ling_xing#大菱形 lan_se_ling_xing#蓝色菱形 lan_se_da_ling_xing#蓝色大菱形
🔸	xiao_fang_pian#小方片 xiao_ling_xing#小菱形 cheng_se_xiao_ling_xing#橙色小菱形 ju_se_xiao_ling_xing#橘色小菱形 ju_huang_se_xiao_ling_xing#橘黄色小菱形
🔹	xiao_fang_pian#小方片 xiao_ling_xing#小菱形 lan_se_xiao_ling_xing#蓝色小菱形
🔺	san_jiao#三角 san_jiao_xing#三角形 zheng_san_jiao#正三角 hong_se_zheng_san_jiao#红色正三角
🔻	san_jiao#三角 san_jiao_xing#三角形 dao_san_jiao#倒三角 hong_se_dao_san_jiao#红色倒三角
🔳	fang_xing_an_niu#方形按钮 bai_xian_fang_xing_an_niu#白线方形按钮 bai_xian_zheng_fang_xing_an_niu#白线正方形按钮 bai_se_fang_xing_an_niu#白色方形按钮 bai_se_zheng_fang_xing_an_niu#白色正方形按钮 bai_bian_xian_fang_xing_an_niu#白边线方形按钮 bai_bian_xian_zheng_fang_xing_an_niu#白边线正方形按钮
🔲	fang_xing_an_niu#方形按钮 hei_xian_fang_xing_an_niu#黑线方形按钮 hei_xian_zheng_fang_xing_an_niu#黑线正方形按钮 hei_se_fang_xing_an_niu#黑色方形按钮 hei_se_zheng_fang_xing_an_niu#黑色正方形按钮 hei_bian_xian_fang_xing_an_niu#黑边线方形按钮 hei_bian_xian_zheng_fang_xing_an_niu#黑边线正方形按钮
🏁	ge_zi_qi#格子旗 zhong_dian_qi#终点旗 zhong_dian#终点
🚩	qi_zhi#旗帜 qi_zi#旗子 san_jiao_qi#三角旗 qi_gan_shang_de_san_jiao_qi#旗杆上的三角旗 qi_gan_shang_de_qi_zhi#旗杆上的旗帜 hong_se_qi_zhi#红色旗帜
🎌	jiao_cha_qi#交叉旗
🏴	ju_hei_qi#举黑旗 hei_qi#黑旗 hei_se_qi#黑色旗 hei_se_qi_zi#黑色旗子 hei_se_qi_zhi#黑色旗帜
🏳	ju_bai_qi#举白旗 bai_qi#白旗 bai_se_qi_zi#白色旗子 bai_se_qi_zhi#白色旗帜 ren_shu#认输 ren_shu_le#认输了 tou_xiang#投降
🏳️‍🌈	tong_xing_qi#同性旗 cai_hong_qi#彩虹旗
🏴‍☠️	hai_dao#海盗 hai_dao_qi#海盗旗 hai_zei#海贼 hai_zei_qi#海贼旗
🇦🇨	a_sen_song_dao#阿森松岛 a_sen_song#阿森松
🇦🇩	an_dao_er#安道尔 an_dao_er_gong_guo#安道尔公国
🇦🇪	a_la_bo_lian_he_qiu_zhang_guo#阿拉伯联合酋长国 a_la_bo#阿拉伯
🇦🇫	a_fu_han#阿富汗
🇦🇬	an_ti_gua_he_ba_bu_da#安提瓜和巴布达 an_ba#安巴
🇦🇮	an_gui_la#安圭拉
🇦🇱	a_er_ba_ni_ya#阿尔巴尼亚 a_er_ba_ni_ya_gong_he_guo#阿尔巴尼亚共和国
🇦🇲	ya_mei_ni_ya#亚美尼亚 ya_mei_ni_ya_gong_he_guo#亚美尼亚共和国
🇦🇴	an_ge_la#安哥拉 an_ge_la_gong_he_guo#安哥拉共和国
🇦🇶	nan_ji_zhou#南极洲
🇦🇷	a_gen_ting#阿根廷 a_gen_ting_gong_he_guo#阿根廷共和国
🇦🇸	mei_shu_sa_mo_ya#美属萨摩亚 dong_sa_mo_ya#东萨摩亚
🇦🇹	ao_di_li#奥地利 ao_di_li_gong_he_guo#奥地利共和国
🇦🇼	a_lu_ba#阿鲁巴
🇦🇽	ao_lan#奥兰 ao_lan_qun_dao#奥兰群岛 a_he_wei_nan_ma#阿赫韦南马
🇦🇿	a_sai_bai_jiang#阿塞拜疆 a_sai_bai_jiang_gong_he_guo#阿塞拜疆共和国
🇧🇦	bo_si_ni_ya_he_hei_sai_ge_wei_na#波斯尼亚和黑塞哥维那 bo_hei#波黑
🇧🇧	ba_ba_duo_si#巴巴多斯
🇧🇩	meng_jia_la_guo#孟加拉国 meng_jia_la#孟加拉
🇧🇪	bi_li_shi#比利时 bi_li_shi_wang_guo#比利时王国
🇧🇫	bu_ji_na_fa_suo#布基纳法索
🇧🇬	bao_jia_li_ya#保加利亚 bao_jia_li_ya_gong_he_guo#保加利亚共和国
🇧🇭	ba_lin#巴林 ba_lin_wang_guo#巴林王国
🇧🇮	bu_long_di#布隆迪 bu_long_di_gong_he_guo#布隆迪共和国
🇧🇯	bei_ning#贝宁 bei_ning_gong_he_guo#贝宁共和国
🇧🇱	sheng_ba_tai_lei_mi#圣巴泰勒米
🇧🇲	bai_mu_da#百慕大
🇧🇳	wen_lai#文莱 wen_lai_da_lu_sa_lan_guo#文莱达鲁萨兰国
🇧🇴	bo_li_wei_ya#玻利维亚 bo_li_wei_ya_guo#玻利维亚国 duo_min_zu_bo_li_wei_ya_guo#多民族玻利维亚国
🇧🇶	he_shu_jia_lei_bi_qu#荷属加勒比区
🇧🇷	ba_xi#巴西 ba_xi_lian_bang#巴西联邦 ba_xi_lian_bang_gong_he_guo#巴西联邦共和国
🇧🇸	ba_ha_ma#巴哈马 ba_ha_ma_guo#巴哈马国
🇧🇹	bu_dan#不丹 bu_dan_wang_guo#不丹王国
🇧🇻	bu_wei_dao#布韦岛
🇧🇼	bo_ci_wa_na#博茨瓦纳 bo_ci_wa_na_gong_he_guo#博茨瓦纳共和国
🇧🇾	bai_e_luo_si#白俄罗斯 bai_e#白俄
🇧🇿	bo_li_zi#伯利兹
🇨🇦	jia_na_da#加拿大
🇨🇨	ke_ke_si_（_ji_lin_）_qun_dao#科科斯（基林）群岛 ke_ke_si#科科斯
🇨🇩	gang_guo_（_jin_）#刚果（金） gang_guo#刚果 gang_guo_jin#刚果金
🇨🇬	gang_guo#刚果 gang_guo_（_bu_）#刚果（布） gang_guo_bu#刚果布
🇨🇫	zhong_fei_gong_he_guo#中非共和国 zhong_fei#中非
🇨🇭	rui_shi#瑞士 rui_shi_lian_bang#瑞士联邦
🇨🇮	ke_te_di_wa#科特迪瓦 ke_te_di_wa_gong_he_guo#科特迪瓦共和国
🇨🇰	ku_ke_qun_dao#库克群岛
🇨🇱	zhi_li#智利 zhi_li_gong_he_guo#智利共和国
🇨🇲	ka_mai_long#喀麦隆 ka_mai_long_gong_he_guo#喀麦隆共和国
🇨🇳	zhong_guo#中国 zhong_hua_ren_min_gong_he_guo#中华人民共和国 wu_xing_hong_qi#五星红旗 hong_qi#红旗
🇨🇴	ge_lun_bi_ya#哥伦比亚 ge_lun_bi_ya_gong_he_guo#哥伦比亚共和国
🇨🇵	ke_li_po_dun_dao#克利珀顿岛
🇨🇷	ge_si_da_li_jia#哥斯达黎加 ge_si_da_li_jia_gong_he_guo#哥斯达黎加共和国
🇨🇺	gu_ba#古巴 gu_ba_gong_he_guo#古巴共和国
🇨🇻	fu_de_jiao#佛得角 fu_de_jiao_gong_he_guo#佛得角共和国
🇨🇼	ku_la_suo#库拉索
🇨🇽	sheng_dan_dao#圣诞岛
🇨🇾	sai_pu_lu_si#塞浦路斯 sai_pu_lu_si_gong_he_guo#塞浦路斯共和国
🇨🇿	jie_ke#捷克 jie_ke_gong_he_guo#捷克共和国
🇩🇪	de_guo#德国 de_yi_zhi#德意志 de_yi_zhi_lian_bang_gong_he_guo#德意志联邦共和国 de_yi_zhi_lian_bang#德意志联邦
🇩🇬	di_ge_jia_xi_ya_dao#迪戈加西亚岛
🇩🇯	ji_bu_ti#吉布提 ji_bu_ti_gong_he_guo#吉布提共和国
🇩🇰	dan_mai#丹麦
🇩🇲	duo_mi_ni_ke#多米尼克 duo_mi_ni_ke_guo#多米尼克国
🇩🇴	duo_mi_ni_jia_gong_he_guo#多米尼加共和国
🇩🇿	a_er_ji_li_ya#阿尔及利亚 a_er_ji_li_ya_min_zhu_ren_min_gong_he_guo#阿尔及利亚民主人民共和国
🇪🇦	xiu_da_ji_mei_li_li_ya#休达及梅利利亚 xiu_da_he_mei_li_li_ya#休达和梅利利亚 xiu_da#休达 mei_li_li_ya#梅利利亚
🇪🇨	e_gua_duo_er#厄瓜多尔 e_gua_duo_er_gong_he_guo#厄瓜多尔共和国
🇪🇪	ai_sha_ni_ya#爱沙尼亚 ai_sha_ni_ya_gong_he_guo#爱沙尼亚共和国
🇪🇬	ai_ji#埃及
🇪🇭	xi_sa_ha_la#西撒哈拉
🇪🇷	e_li_te_li_ya#厄立特里亚 e_li_te_li_ya_guo#厄立特里亚国
🇪🇸	xi_ban_ya#西班牙 xi_ban_ya_wang_guo#西班牙王国
🇪🇹	ai_sai_e_bi_ya#埃塞俄比亚 ai_sai_e_bi_ya_lian_bang_min_zhu_gong_he_guo#埃塞俄比亚联邦民主共和国
🇪🇺	ou_meng#欧盟 ou_zhou_lian_meng#欧洲联盟
🇫🇮	fen_lan#芬兰 fen_lan_gong_he_guo#芬兰共和国
🇫🇯	fei_ji#斐济 fei_ji_gong_he_guo#斐济共和国
🇫🇰	fu_ke_lan_qun_dao#福克兰群岛 ma_er_wei_na_si_qun_dao#马尔维纳斯群岛
🇫🇲	mi_ke_luo_ni_xi_ya#密克罗尼西亚
🇫🇴	fa_luo_qun_dao#法罗群岛
🇫🇷	fa_guo#法国 fa_lan_xi#法兰西 fa_lan_xi_gong_he_guo#法兰西共和国
🇬🇦	jia_peng#加蓬
🇬🇧	ying_guo#英国 ying_lun#英伦 da_bu_lie_dian_ji_bei_ai_er_lan_lian_he_wang_guo#大不列颠及北爱尔兰联合王国
🇬🇩	ge_lin_na_da#格林纳达
🇬🇪	ge_lu_ji_ya#格鲁吉亚
🇬🇫	fa_shu_gui_ya_na#法属圭亚那
🇬🇬	gen_xi_dao#根西岛
🇬🇭	jia_na#加纳 jia_na_gong_he_guo#加纳共和国
🇬🇮	zhi_bu_luo_tuo#直布罗陀
🇬🇱	ge_ling_lan#格陵兰
🇬🇲	gang_bi_ya#冈比亚 gang_bi_ya_gong_he_guo#冈比亚共和国
🇬🇳	ji_nei_ya#几内亚 ji_nei_ya_gong_he_guo#几内亚共和国
🇬🇵	gua_de_luo_pu#瓜德罗普
🇬🇶	chi_dao_ji_nei_ya#赤道几内亚
🇬🇷	xi_la#希腊 xi_la_gong_he_guo#希腊共和国
🇬🇸	nan_qiao_zhi_ya_he_nan_sang_wei_qi_qun_dao#南乔治亚和南桑威奇群岛
🇬🇹	wei_di_ma_la#危地马拉
🇬🇺	guan_dao#关岛
🇬🇼	ji_nei_ya_bi_shao#几内亚比绍 ji_nei_ya_bi_shao_gong_he_guo#几内亚比绍共和国
🇬🇾	gui_ya_na#圭亚那 gui_ya_na_he_zuo_gong_he_guo#圭亚那合作共和国
🇭🇰	zhong_guo_xiang_gang_te_bie_xing_zheng_qu#中国香港特别行政区 zhong_guo_xiang_gang#中国香港 xiang_gang#香港 xiang_gang_te_bie_xing_zheng_qu#香港特别行政区
🇭🇲	he_de_dao_he_mai_ke_tang_na_qun_dao#赫德岛和麦克唐纳群岛
🇭🇳	hong_dou_la_si#洪都拉斯 hong_dou_la_si_gong_he_guo#洪都拉斯共和国
🇭🇷	ke_luo_di_ya#克罗地亚 ke_luo_di_ya_gong_he_guo#克罗地亚共和国
🇭🇹	hai_di#海地 hai_di_gong_he_guo#海地共和国
🇭🇺	xiong_ya_li#匈牙利
🇮🇨	jia_na_li_qun_dao#加纳利群岛
🇮🇩	yin_du_ni_xi_ya#印度尼西亚 yin_du_ni_xi_ya_gong_he_guo#印度尼西亚共和国
🇮🇪	ai_er_lan#爱尔兰 ai_er_lan_gong_he_guo#爱尔兰共和国
🇮🇱	yi_se_lie#以色列 yi_se_lie_guo#以色列国
🇮🇲	ma_en_dao#马恩岛
🇮🇳	yin_du#印度 yin_du_gong_he_guo#印度共和国
🇮🇴	ying_shu_yin_du_yang_ling_di#英属印度洋领地
🇮🇶	yi_la_ke#伊拉克 yi_la_ke_gong_he_guo#伊拉克共和国
🇮🇷	yi_lang#伊朗 yi_lang_yi_si_lan_gong_he_guo#伊朗伊斯兰共和国
🇮🇸	bing_dao#冰岛
🇮🇹	yi_da_li#意大利 yi_da_li_gong_he_guo#意大利共和国
🇯🇪	ze_xi_dao#泽西岛 ze_xi#泽西
🇯🇲	ya_mai_jia#牙买加
🇯🇴	yue_dan#约旦 yue_dan_ha_xi_mu_wang_guo#约旦哈希姆王国
🇯🇵	ri_ben#日本 ri_ben_guo#日本国
🇰🇪	ken_ni_ya#肯尼亚 ken_ni_ya_gong_he_guo#肯尼亚共和国
🇰🇬	ji_er_ji_si_si_tan#吉尔吉斯斯坦 ji_er_ji_si_gong_he_guo#吉尔吉斯共和国
🇰🇭	jian_pu_zhai#柬埔寨 jian_pu_zhai_wang_guo#柬埔寨王国
🇰🇮	ji_li_ba_si#基里巴斯 ji_li_ba_si_gong_he_guo#基里巴斯共和国
🇰🇲	ke_mo_luo#科摩罗 ke_mo_luo_lian_meng#科摩罗联盟
🇰🇳	sheng_ji_ci_he_ni_wei_si#圣基茨和尼维斯
🇰🇵	chao_xian#朝鲜 bei_chao_xian#北朝鲜 bei_han#北韩
🇰🇷	han_guo#韩国 nan_chao_xian#南朝鲜 nan_han#南韩
🇰🇼	ke_wei_te#科威特 ke_wei_te_guo#科威特国
🇰🇾	kai_man_qun_dao#开曼群岛
🇰🇿	ha_sa_ke_si_tan#哈萨克斯坦 ha_sa_ke_si_tan_gong_he_guo#哈萨克斯坦共和国
🇱🇦	lao_wo#老挝 lao_wo_ren_min_min_zhu_gong_he_guo#老挝人民民主共和国
🇱🇧	li_ba_nen#黎巴嫩 li_ba_nen_gong_he_guo#黎巴嫩共和国
🇱🇨	sheng_lu_xi_ya#圣卢西亚
🇱🇮	lie_zhi_dun_shi_deng#列支敦士登 lie_zhi_dun_shi_deng_gong_guo#列支敦士登公国
🇱🇰	si_li_lan_ka#斯里兰卡 si_li_lan_ka_min_zhu_she_hui_zhu_yi_gong_he_guo#斯里兰卡民主社会主义共和国
🇱🇷	li_bi_li_ya#利比里亚 li_bi_li_ya_gong_he_guo#利比里亚共和国
🇱🇸	lai_suo_tuo#莱索托 lai_suo_tuo_wang_guo#莱索托王国
🇱🇹	li_tao_wan#立陶宛 li_tao_wan_gong_he_guo#立陶宛共和国
🇱🇺	lu_sen_bao#卢森堡 lu_sen_bao_da_gong_guo#卢森堡大公国
🇱🇻	la_tuo_wei_ya#拉脱维亚 la_tuo_wei_ya_gong_he_guo#拉脱维亚共和国
🇱🇾	li_bi_ya#利比亚 li_bi_ya_guo#利比亚国
🇲🇦	mo_luo_ge#摩洛哥 mo_luo_ge_wang_guo#摩洛哥王国
🇲🇨	mo_na_ge#摩纳哥 mo_na_ge_gong_guo#摩纳哥公国
🇲🇩	mo_er_duo_wa#摩尔多瓦 mo_er_duo_wa_gong_he_guo#摩尔多瓦共和国
🇲🇪	hei_shan#黑山
🇲🇫	fa_shu_sheng_ma_ding#法属圣马丁
🇲🇬	ma_da_jia_si_jia#马达加斯加 ma_da_jia_si_jia_gong_he_guo#马达加斯加共和国
🇲🇭	ma_shao_er_qun_dao#马绍尔群岛
🇲🇰	bei_ma_qi_dun#北马其顿 bei_ma_qi_dun_gong_he_guo#北马其顿共和国
🇲🇱	ma_li#马里 ma_li_gong_he_guo#马里共和国
🇲🇲	mian_dian#缅甸 mian_dian_lian_bang#缅甸联邦 mian_dian_lian_bang_gong_he_guo#缅甸联邦共和国
🇲🇳	meng_gu#蒙古 meng_gu_guo#蒙古国
🇲🇴	zhong_guo_ao_men_te_bie_xing_zheng_qu#中国澳门特别行政区 zhong_guo_ao_men#中国澳门 ao_men#澳门 ao_men_te_bie_xing_zheng_qu#澳门特别行政区
🇲🇵	bei_ma_li_ya_na_qun_dao#北马里亚纳群岛
🇲🇶	ma_ti_ni_ke#马提尼克
🇲🇷	mao_li_ta_ni_ya#毛里塔尼亚 mao_li_ta_ni_ya_yi_si_lan_gong_he_guo#毛里塔尼亚伊斯兰共和国
🇲🇸	meng_te_sai_la_te#蒙特塞拉特
🇲🇹	ma_er_ta#马耳他 ma_er_ta_gong_he_guo#马耳他共和国
🇲🇺	mao_li_qiu_si#毛里求斯 mao_li_qiu_si_gong_he_guo#毛里求斯共和国
🇲🇻	ma_er_dai_fu#马尔代夫 ma_er_dai_fu_gong_he_guo#马尔代夫共和国
🇲🇼	ma_la_wei#马拉维 ma_la_wei_gong_he_guo#马拉维共和国
🇲🇽	mo_xi_ge#墨西哥 mo_xi_ge_he_zhong_guo#墨西哥合众国
🇲🇾	ma_lai_xi_ya#马来西亚
🇲🇿	mo_sang_bi_ke#莫桑比克 mo_sang_bi_ke_gong_he_guo#莫桑比克共和国
🇳🇦	na_mi_bi_ya#纳米比亚 na_mi_bi_ya_gong_he_guo#纳米比亚共和国
🇳🇨	xin_ka_li_duo_ni_ya#新喀里多尼亚
🇳🇪	ni_ri_er#尼日尔 ni_ri_er_gong_he_guo#尼日尔共和国
🇳🇫	nuo_fu_ke_dao#诺福克岛
🇳🇬	ni_ri_li_ya#尼日利亚 ni_ri_li_ya_lian_bang#尼日利亚联邦 ni_ri_li_ya_lian_bang_gong_he_guo#尼日利亚联邦共和国
🇳🇮	ni_jia_la_gua#尼加拉瓜 ni_jia_la_gua_gong_he_guo#尼加拉瓜共和国
🇳🇱	he_lan#荷兰 ni_de_lan#尼德兰
🇳🇴	nuo_wei#挪威 nuo_wei_wang_guo#挪威王国
🇳🇵	ni_po_er#尼泊尔
🇳🇷	nao_lu#瑙鲁 nao_lu_gong_he_guo#瑙鲁共和国
🇳🇺	niu_ai#纽埃
🇳🇿	xin_xi_lan#新西兰
🇴🇲	a_man#阿曼 a_man_su_dan_guo#阿曼苏丹国
🇵🇦	ba_na_ma#巴拿马 ba_na_ma_gong_he_guo#巴拿马共和国
🇵🇪	bi_lu#秘鲁 bi_lu_gong_he_guo#秘鲁共和国
🇵🇫	fa_shu_bo_li_ni_xi_ya#法属波利尼西亚
🇵🇬	ba_bu_ya_xin_ji_nei_ya#巴布亚新几内亚 ba_bu_ya_xin_ji_nei_ya_du_li_guo#巴布亚新几内亚独立国
🇵🇭	fei_lv_bin#菲律宾 fei_lv_bin_gong_he_guo#菲律宾共和国
🇵🇰	ba_ji_si_tan#巴基斯坦 ba_ji_si_tan_yi_si_lan_gong_he_guo#巴基斯坦伊斯兰共和国
🇵🇱	bo_lan#波兰 bo_lan_gong_he_guo#波兰共和国
🇵🇲	sheng_pi_ai_er_he_mi_ke_long_qun_dao#圣皮埃尔和密克隆群岛
🇵🇳	pi_te_kai_en_qun_dao#皮特凯恩群岛
🇵🇷	bo_duo_li_ge#波多黎各
🇵🇸	ba_le_si_tan_ling_tu#巴勒斯坦领土
🇵🇹	pu_tao_ya#葡萄牙 pu_tao_ya_gong_he_guo#葡萄牙共和国
🇵🇼	pa_lao#帕劳 pa_lao_gong_he_guo#帕劳共和国
🇵🇾	ba_la_gui#巴拉圭 ba_la_gui_gong_he_guo#巴拉圭共和国
🇶🇦	ka_ta_er#卡塔尔 ka_ta_er_guo#卡塔尔国
🇷🇪	liu_ni_wang#留尼汪
🇷🇴	luo_ma_ni_ya#罗马尼亚
🇷🇸	sai_er_wei_ya#塞尔维亚 sai_er_wei_ya_gong_he_guo#塞尔维亚共和国
🇷🇺	e_luo_si#俄罗斯 e_guo#俄国 e_luo_si_lian_bang#俄罗斯联邦
🇷🇼	lu_wang_da#卢旺达 lu_wang_da_gong_he_guo#卢旺达共和国
🇸🇦	sha_te#沙特 sha_te_a_la_bo#沙特阿拉伯 sha_te_a_la_bo_wang_guo#沙特阿拉伯王国
🇸🇧	suo_luo_men_qun_dao#所罗门群岛
🇸🇨	sai_she_er#塞舌尔 sai_she_er_gong_he_guo#塞舌尔共和国
🇸🇩	su_dan#苏丹 su_dan_gong_he_guo#苏丹共和国
🇸🇪	rui_dian#瑞典 rui_dian_wang_guo#瑞典王国
🇸🇬	xin_jia_po#新加坡 xin_jia_po_gong_he_guo#新加坡共和国
🇸🇭	sheng_he_lei_na#圣赫勒拿
🇸🇮	si_luo_wen_ni_ya#斯洛文尼亚 si_luo_wen_ni_ya_gong_he_guo#斯洛文尼亚共和国
🇸🇯	si_wa_er_ba_he_yang_ma_yan#斯瓦尔巴和扬马延
🇸🇰	si_luo_fa_ke#斯洛伐克 si_luo_fa_ke_gong_he_guo#斯洛伐克共和国
🇸🇱	sai_la_li_ang#塞拉利昂 sai_la_li_ang_gong_he_guo#塞拉利昂共和国
🇸🇲	sheng_ma_li_nuo#圣马力诺 sheng_ma_li_nuo_gong_he_guo#圣马力诺共和国
🇸🇳	sai_nei_jia_er#塞内加尔 sai_nei_jia_er_gong_he_guo#塞内加尔共和国
🇸🇴	suo_ma_li#索马里 suo_ma_li_lian_bang#索马里联邦 suo_ma_li_lian_bang_gong_he_guo#索马里联邦共和国
🇸🇷	su_li_nan#苏里南 su_li_nan_gong_he_guo#苏里南共和国
🇸🇸	nan_su_dan#南苏丹 nan_su_dan_gong_he_guo#南苏丹共和国
🇸🇹	sheng_duo_mei_he_pu_lin_xi_bi#圣多美和普林西比 sheng_duo_mei_he_pu_lin_xi_bi_min_zhu_gong_he_guo#圣多美和普林西比民主共和国
🇸🇻	sa_er_wa_duo#萨尔瓦多 sa_er_wa_duo_gong_he_guo#萨尔瓦多共和国
🇸🇽	he_shu_sheng_ma_ding#荷属圣马丁 sheng_ma_ding#圣马丁
🇸🇾	xu_li_ya#叙利亚 xu_li_ya_gong_he_guo#叙利亚共和国 a_la_bo_xu_li_ya_gong_he_guo#阿拉伯叙利亚共和国
🇸🇿	si_wei_shi_lan#斯威士兰 si_wei_shi_lan_wang_guo#斯威士兰王国
🇹🇦	te_li_si_tan_–_da_ku_ni_ya_qun_dao#特里斯坦–达库尼亚群岛 te_li_si_tan_–_da_ku_ni_ya#特里斯坦–达库尼亚
🇹🇨	te_ke_si_he_kai_ke_si_qun_dao#特克斯和凯科斯群岛
🇹🇩	zha_de#乍得 zha_de_gong_he_guo#乍得共和国
🇹🇫	fa_shu_nan_bu_ling_di#法属南部领地
🇹🇬	duo_ge#多哥 duo_ge_gong_he_guo#多哥共和国
🇹🇭	tai_guo#泰国 tai_wang_guo#泰王国 xian_luo#暹罗
🇹🇯	ta_ji_ke_si_tan#塔吉克斯坦 ta_ji_ke_si_tan_gong_he_guo#塔吉克斯坦共和国
🇹🇰	tuo_ke_lao#托克劳
🇹🇱	dong_di_wen#东帝汶 dong_di_wen_min_zhu_gong_he_guo#东帝汶民主共和国
🇹🇲	tu_ku_man_si_tan#土库曼斯坦
🇹🇳	tu_ni_si#突尼斯 tu_ni_si_gong_he_guo#突尼斯共和国
🇹🇴	tang_jia#汤加 tang_jia_wang_guo#汤加王国
🇹🇷	tu_er_qi#土耳其 tu_er_qi_gong_he_guo#土耳其共和国
🇹🇹	te_li_ni_da_he_duo_ba_ge#特立尼达和多巴哥 te_li_ni_da_he_duo_ba_ge_gong_he_guo#特立尼达和多巴哥共和国
🇹🇻	tu_wa_lu#图瓦卢
🇹🇼	tai_wan#台湾 zhong_hua_min_guo#中华民国
🇹🇿	tan_sang_ni_ya#坦桑尼亚 tan_sang_ni_ya_lian_he_gong_he_guo#坦桑尼亚联合共和国
🇺🇦	wu_ke_lan#乌克兰
🇺🇬	wu_gan_da#乌干达 wu_gan_da_gong_he_guo#乌干达共和国
🇺🇲	mei_guo_ben_tu_wai_xiao_dao_yu#美国本土外小岛屿
🇺🇳	lian_he_guo#联合国
🇺🇸	mei_guo#美国 mei_li_jian#美利坚 mei_li_jian_he_zhong_guo#美利坚合众国 xing_tiao_qi#星条旗
🇺🇾	wu_la_gui#乌拉圭 wu_la_gui_dong_an_gong_he_guo#乌拉圭东岸共和国
🇺🇿	wu_zi_bie_ke_si_tan#乌兹别克斯坦 wu_zi_bie_ke_si_tan_gong_he_guo#乌兹别克斯坦共和国
🇻🇦	fan_di_gang#梵蒂冈 fan_di_gang_cheng_guo#梵蒂冈城国
🇻🇨	sheng_wen_sen_te_he_ge_lin_na_ding_si#圣文森特和格林纳丁斯
🇻🇪	wei_nei_rui_la#委内瑞拉 wei_nei_rui_la_bo_li_wa_er_gong_he_guo#委内瑞拉玻利瓦尔共和国
🇻🇬	ying_shu_wei_er_jing_qun_dao#英属维尔京群岛
🇻🇮	mei_shu_wei_er_jing_qun_dao#美属维尔京群岛
🇻🇳	yue_nan#越南 yue_nan_she_hui_zhu_yi_gong_he_guo#越南社会主义共和国
🇻🇺	wa_nu_a_tu#瓦努阿图 wa_nu_a_tu_gong_he_guo#瓦努阿图共和国
🇼🇫	wa_li_si_he_fu_tu_na#瓦利斯和富图纳
🇼🇸	sa_mo_ya#萨摩亚 sa_mo_ya_du_li_guo#萨摩亚独立国
🇽🇰	ke_suo_wo#科索沃 ke_suo_wo_gong_he_guo#科索沃共和国
🇾🇪	ye_men#也门 ye_men_gong_he_guo#也门共和国
🇾🇹	ma_yue_te#马约特
🇿🇦	nan_fei#南非 nan_fei_gong_he_guo#南非共和国
🇿🇲	zan_bi_ya#赞比亚 zan_bi_ya_gong_he_guo#赞比亚共和国
🇿🇼	jin_ba_bu_wei#津巴布韦 jin_ba_bu_wei_gong_he_guo#津巴布韦共和国
🏴󠁧󠁢󠁥󠁮󠁧󠁿	ying_ge_lan#英格兰
🏴󠁧󠁢󠁳󠁣󠁴󠁿	su_ge_lan#苏格兰
🏴󠁧󠁢󠁷󠁬󠁳󠁿	wei_er_shi#威尔士
]]

local function find_emoji(input, emoji_data, seg, exact_match)
  for emoji, emoji_names in string.gmatch(emoji_data, "(.-)\t(.-)\n") do
    local sanitized_name = emoji_names:gsub('_', ''):lower()
    if sanitized_name:find(input, 1, true) then
      local cand
      for emoji_item in string.gmatch(emoji_names, "%S+") do
        local emoji_name, emoji_comment = emoji_item:match("([^#]+)#(.+)")
        if emoji_name == nil then
          emoji_name = emoji_item
          emoji_comment = emoji_name
        end

        emoji_name = emoji_name:gsub('_', ''):lower()
        if emoji_name == input then
          cand = Candidate(input, seg.start, seg._end, emoji, emoji_comment)
          cand.quality = 100
          break
        elseif not exact_match and emoji_name:find(input, 1, true) then
          cand = Candidate(input, seg.start, seg._end, emoji, emoji_comment)
          cand.quality = 90
          break
        end
      end

      if cand then
        yield(cand)
      end
    end
  end
end

local function emoji_translator(input, seg)
  if string.sub(input, 1, 1) ~= ':' then
    return
  end
  local input = input:sub(2)

  local exact_match = false
  if string.sub(input, #input) == ':' then
    input = string.sub(input, 1, #input - 1)
    exact_match = true
  end

  if #input == 0 then
    return
  end

  input = input:gsub('_', ''):lower()
  find_emoji(input, emoji_data_cn, seg, exact_match)
  find_emoji(input, emoji_data_en, seg, exact_match)
end

return emoji_translator