# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

puts 'Burning all to ash...'
Question.destroy_all
Favorite.destroy_all
Instrument.destroy_all
User.destroy_all

puts 'Creating the only user...'

avatar_image = {
  'avatar_1' => 'https://img.freepik.com/icones-gratuites/guitare_318-419057.jpg?w=2000'
}

ringo = User.create!(
  email: 'ringo.starr@gmail.com',
  password: '123456',
  username: 'Ringo Starr',
  avatar_key: avatar_image['avatar_1']
)

puts 'Adding Instruments...'

# t.string :audio
# t.string :logo

# Dobro
dobro = Instrument.create!(
  name: 'Dobro',
  family: 'Strings',
  tessitura: '4 octaves',
  materials: 'Wood, metal resonator',
  origins: 'The Dobro is a brand of resonator guitar, invented in the USA by the Dopyera brothers.',
  more_info: 'Distinctive for its metal resonator, which gives it a louder volume.',
  geographical_region: 'North America',
  town: 'Los Angeles',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Guitare_dobro.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/J46sRuj99Cw'
)
file = File.open(Rails.root.join("db/seeds/instruments/dobro.jpg"))
dobro.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/DOBRO P.jpg"))
dobro.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Sousaphone
sousaphone = Instrument.create!(
  name: 'Sousaphone',
  family: 'Brass',
  tessitura: '2 octaves',
  materials: 'Brass or fiberglass',
  origins: 'Designed for marching, it was created by John Philip Sousa.',
  more_info: 'Circular shape allows it to be worn over the player’s shoulder.',
  geographical_region: 'North America',
  town: 'Washington D.C.',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Sousaphone.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/gFrCyU_1zw0'
)
file = File.open(Rails.root.join("db/seeds/instruments/sousaphone.jpg"))
sousaphone.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/SOUSA P.jpg"))
sousaphone.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


# Pedal Steel Guitar
pedal_steel_guitar = Instrument.create!(
  name: 'Pedal Steel Guitar',
  family: 'Strings',
  tessitura: '6 octaves',
  materials: 'Metal, wood, iron',
  origins: 'The pedal steel guitar has no body, but two ten-string necks mounted on a console. Notes and chords are produced by sliding a metal bar over the plucked strings.',
  more_info: 'Developed in the 1940s, it has become a classic instrument of Hawaiian and country music. Joseph Kekuku was the first Hawaiian performer to slide an object along the strings.',
  geographical_region: 'North America',
  town: 'Mexico',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Guitare_pedalsteel.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/2rwfqsjimRM'
)
file = File.open(Rails.root.join("db/seeds/instruments/pedal_steel_guitar.jpg"))
pedal_steel_guitar.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/PEDAL STEEL P.jpg"))
pedal_steel_guitar.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


# Cuica
cuica = Instrument.create!(
  name: 'Cuica',
  family: 'Percussions',
  tessitura: 'Varies',
  materials: 'Wood, animal skin',
  origins: 'An Afro-Brazilian friction drum with a large pitch range.',
  more_info: 'Used extensively in samba music.',
  geographical_region: 'South America',
  town: 'Rio de Janeiro',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Cuica.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/mmlK94QvwiA'
)
file = File.open(Rails.root.join("db/seeds/instruments/cuica.jpg"))
cuica.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/cuica.jpg"))
cuica.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Diple
diple = Instrument.create!(
  name: 'Diple',
  family: 'Woodwinds',
  tessitura: '1.5 octaves',
  materials: 'Wood',
  origins: 'A traditional double-chambered woodwind instrument from the Balkans.',
  more_info: 'Often used in the folk music of Dalmatia and Herzegovina.',
  geographical_region: 'Europe',
  town: 'Split',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Diple.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/SquIKsZ64h4'
)
file = File.open(Rails.root.join("db/seeds/instruments/diple.jpg"))
diple.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/DIPLE P.jpg"))
diple.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


# Chitarrone
chitarrone = Instrument.create!(
  name: 'Chitarrone',
  family: 'Strings',
  tessitura: '4 octaves',
  materials: 'Wood',
  origins: 'An extended lute used in Italy during the Renaissance and Baroque periods.',
  more_info: 'Known for its very long neck and deep, rich sound.',
  geographical_region: 'Europe',
  town: 'Rome',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Chitarrone.mp3',
  youtube_embed_url:'https://www.youtube.com/embed/fZYzuIGDYGs'
)
file = File.open(Rails.root.join("db/seeds/instruments/chitarrone.jpg"))
chitarrone.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/CHITARRONE P.jpg"))
chitarrone.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Krar
krar = Instrument.create!(
  name: 'Krar',
  family: 'Strings',
  tessitura: '2.5 octaves',
  materials: 'Wood, animal skin',
  origins: 'A traditional Ethiopian and Eritrean stringed instrument.',
  more_info: 'Often accompanied with a vocalist in traditional music.',
  geographical_region: 'Africa',
  town: 'Addis Ababa',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Krar.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/2487oIFIeLM'
)
file = File.open(Rails.root.join("db/seeds/instruments/krar.jpg"))
krar.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/KRAR P.jpg"))
krar.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


# Sékéré
sekere = Instrument.create!(
  name: 'Sekere',
  family: 'Percussions',
  tessitura: 'Varies',
  materials: 'Gourd, beads or cowries',
  origins: 'A percussion instrument from Nigeria, made of a gourd with a net of beads or cowries.',
  more_info: 'Played by shaking and/or hitting the beads against the gourd.',
  geographical_region: 'Africa',
  town: 'Lagos',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Sekere.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/mmJm91UPGfs'
)
file = File.open(Rails.root.join("db/seeds/instruments/sekere.jpg"))
sekere.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/SEKERE P.jpg"))
sekere.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


# Kamanche
kamanche = Instrument.create!(
  name: 'Kamanche',
  family: 'Strings',
  tessitura: '3 octaves',
  materials: 'Wood with a skin membrane',
  origins: 'Traditional spiked fiddle of Persia (Iran)',
  more_info: 'Played with a bow, producing a melancholic sound.',
  geographical_region: 'Middle East',
  town: 'Tehran',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Kamanche.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/vxmJCk9J5fE'
)
file = File.open(Rails.root.join("db/seeds/instruments/kamanche.jpg"))
kamanche.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/KAMANCHE P.jpg"))
kamanche.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Shofar
shofar = Instrument.create!(
  name: 'Shofar',
  family: 'Woodwinds',
  tessitura: 'Depends on the length',
  materials: 'Ram’s horn',
  origins: 'Ancient Jewish musical horn.',
  more_info: 'Used for religious purposes, especially the Jewish High Holidays.',
  geographical_region: 'Middle East',
  town: 'Jerusalem',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Shofar.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/Rnkb7M3dKTg'
)
file = File.open(Rails.root.join("db/seeds/instruments/shofar.jpg"))
shofar.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/SHOFAR P.jpg"))
shofar.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Erhu
erhu = Instrument.create!(
  name: 'Erhu',
  family: 'Strings',
  tessitura: '3 octaves',
  materials: 'Wood and snake skin',
  origins: 'The erhu is a 2-stringed Chinese hurdy-gurdy. Its size varies around 66 cm in length.',
  more_info: 'The instrument\'s small hexagonal body is crossed by a long, narrow neck, sometimes ending in a carved dragon or bat head.',
  geographical_region: 'Central Asia and East Asia',
  town: 'Beijing',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Erhu.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/lSCHU3kwrm8'
)
file = File.open(Rails.root.join("db/seeds/instruments/erhu.jpg"))
erhu.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/ERHU P.jpg"))
erhu.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Di (assuming you mean Dizi)
dizi = Instrument.create!(
  name: 'Dizi',
  family: 'Woodwinds',
  tessitura: '2.5 octaves',
  materials: 'Bamboo',
  origins: 'Traditional Chinese transverse flute.',
  more_info: 'Features a membrane covering one of the holes to produce a buzzing sound.',
  geographical_region: 'Central Asia and East Asia',
  town: 'Shanghai',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Di.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/lI1L2l6vi-4'
)
file = File.open(Rails.root.join("db/seeds/instruments/dizi.jpg"))
dizi.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/DIZI P.jpg"))
dizi.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Tabla
tabla = Instrument.create!(
  name: 'Tabla',
  family: 'Percussions',
  tessitura: 'Varies',
  materials: 'Wood and animal skin',
  origins: 'Traditional Indian percussion instrument.',
  more_info: 'Consists of a pair of drums, played with fingers and palms.',
  geographical_region: 'South Asia',
  town: 'Mumbai',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Tabla.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/LAwgD_YxRgM'
)
file = File.open(Rails.root.join("db/seeds/instruments/tabla.jpg"))
tabla.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/TABLA P.jpg"))
tabla.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Vina (assuming you mean Veena)
veena = Instrument.create!(
  name: 'Veena',
  family: 'Strings',
  tessitura: '4 octaves',
  materials: 'Wood',
  origins: 'Ancient musical instrument of India.',
  more_info: 'Has a long neck with a rounded resonator at the end.',
  geographical_region: 'South Asia',
  town: 'Chennai',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Vina.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/Tz-Xmh9mXow'
)
file = File.open(Rails.root.join("db/seeds/instruments/veena.png"))
veena.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/VEENAA.jpg"))
veena.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Khene
khene = Instrument.create!(
  name: 'Khene',
  family: 'Woodwinds',
  tessitura: '2 octaves',
  materials: 'Made of bamboo',
  origins: 'The Khene is a large mouth organ from Southeast Asia. It belongs to a family of instruments that includes the Chinese cheng and the Japanese sho. It is common in northern Thailand, Laos and Birmania.',
  more_info: 'The length of the pipes determines the pitch of the note. It can vary from 90cm to 2m20',
  geographical_region: 'South Asia',
  town: 'Bangkok',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Khene.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/DIfi9wDDpUQ'
)
file = File.open(Rails.root.join("db/seeds/instruments/khene.jpg"))
khene.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/KHENE P.jpg"))
khene.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Didgeridoo
didgeridoo = Instrument.create!(
  name: 'Didgeridoo',
  family: 'Woddwind',
  tessitura: 'Fundamental frequency with overtones',
  materials: 'Eucalyptus wood, traditionally hollowed out by termites',
  origins: 'Traditional wind instrument developed by Indigenous Australians.',
  more_info: 'Played by using circular breathing, which allows for a continuous sound. Known for its droning sound.',
  geographical_region: 'Oceania',
  town: 'Darwin',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Didjeridu.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/yG9ZX1FS20A'
)
file = File.open(Rails.root.join("db/seeds/instruments/didgeridoo.jpg"))
didgeridoo.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/DIDGERI P.jpg"))
didgeridoo.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Appalachian Zither
appalachian_zither = Instrument.create!(
  name: 'Appalachian Zither',
  family: 'Strings',
  tessitura: 'Variable depending on size and tuning',
  materials: 'Usually made of wood',
  origins: 'The Appalachian Zither comes from the Appalachian region of the United States.',
  more_info: 'Also known as the mountain dulcimer or lap dulcimer.',
  geographical_region: 'North America',
  town: 'Appalachia',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Cithare_appalaches.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/_6OJ1TKMENo'
)
file = File.open(Rails.root.join("db/seeds/instruments/appalachian_zither.jpg"))
appalachian_zither.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/APPALACHIAN ZITHER.jpg"))
appalachian_zither.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Steel Drum
steel_drum = Instrument.create!(
  name: 'Steel Drum',
  family: 'Percussions',
  tessitura: 'Ranges from 2 to over 4 octaves depending on type',
  materials: 'Made of steel',
  origins: 'Originated in Trinidad and Tobago.',
  more_info: 'Also known as the steelpan or pan. It evolved from earlier drum-based instruments.',
  geographical_region: 'South America',
  town: 'Port of Spain',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Steeldrum.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/DRfb-AnDo7g'
)
file = File.open(Rails.root.join("db/seeds/instruments/steel_drum.jpg"))
steel_drum.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/STEEL DRUM.jpg"))
steel_drum.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Syrinx (Pan Flute)
syrinx = Instrument.create!(
  name: 'Syrinx',
  family: 'Woodwinds',
  tessitura: 'Variable, generally 2 octaves',
  materials: 'Made of bamboo or reeds',
  origins: 'The Pan flute or syrinx comprises a series of pipes of unequal length, assembled in a raft. The notes are produced by blowing on the top opening of the tubes.',
  more_info: 'Pan flutes have been used since prehistoric times all over the world and are still popular, especially in South America.',
  geographical_region: 'South America',
  town: 'Manaus',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Flute_pan.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/R3C3aNSOHXk'
)
file = File.open(Rails.root.join("db/seeds/instruments/syrinx.jpg"))
syrinx.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/SYRINX P.jpg"))
syrinx.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Cromorne
cromorne = Instrument.create!(
  name: 'Cromorne',
  family: 'Woodwinds',
  tessitura: 'About 2 octaves',
  materials: 'Made of wood',
  origins: 'Medieval Europe, precursor to the modern oboe.',
  more_info: 'A double reed instrument.',
  geographical_region: 'Europe',
  town: 'Paris',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Cromorne.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/8w7KJznei7I'
)
file = File.open(Rails.root.join("db/seeds/instruments/cromorne.jpg"))
cromorne.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/CROMORNE P.jpg"))
cromorne.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Celesta
celesta = Instrument.create!(
  name: 'Celesta',
  family: 'Percussions',
  tessitura: '4-5 octaves',
  materials: 'Metal plates with a wooden resonator',
  origins: 'Invented in France in the late 19th century.',
  more_info: 'The celesta has a sound that is similar to a glockenspiel but with a much softer and more subtle timbre.',
  geographical_region: 'Europe',
  town: 'Rouen',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Celesta.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/YSP_HorKQMc'
)
file = File.open(Rails.root.join("db/seeds/instruments/celesta.jpg"))
celesta.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/CELESTA P.jpg"))
celesta.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Mbira
mbira = Instrument.create!(
  name: 'Mbira',
  family: 'Percussions',
  tessitura: 'Around 2-3 octaves',
  materials: 'Metal tines mounted on a wooden platform',
  origins: 'Traditional instrument of the Shona people of Zimbabwe.',
  more_info: 'Also known as a thumb piano.',
  geographical_region: 'Africa',
  town: 'Harare',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Mbira.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/kd7KC3PaEaA'
)
file = File.open(Rails.root.join("db/seeds/instruments/mbira.jpg"))
mbira.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/MBIRA P.jpg"))
mbira.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


# Nay
nay = Instrument.create!(
  name: 'Nay',
  family: 'Woodwinds',
  tessitura: 'About 2.5 octaves',
  materials: 'Made of reed',
  origins: 'Ancient Middle Eastern instrument, commonly associated with Sufi music.',
  more_info: 'End-blown flute, played without a mouthpiece.',
  geographical_region: 'Middle East',
  town: 'Cairo',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Nay.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/5wc6zFXJPqM'
)
file = File.open(Rails.root.join("db/seeds/instruments/nay.jpg"))
nay.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/NAY P.jpg"))
nay.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Suona
suona = Instrument.create!(
  name: 'Suona',
  family: 'Woodwinds',
  tessitura: 'Around 2 octaves',
  materials: 'Made of wood with a metal bell',
  origins: 'Traditional Chinese instrument.',
  more_info: 'A double-reed instrument with a distinctively loud and high-pitched sound.',
  geographical_region: 'Central Asia and East Asia',
  town: 'Qingdao',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Suona.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/F-T25H17tHk'
)
file = File.open(Rails.root.join("db/seeds/instruments/suona.jpg"))
suona.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/SUONA P.jpg"))
suona.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Sitar
sitar = Instrument.create!(
  name: 'Sitar',
  family: 'Strings',
  tessitura: 'Around 3 octaves',
  materials: 'Made of wood with a gourd resonator',
  origins: 'The sitar is a large, long-necked lute renowned for its vibrant, haunting sound. It is the instrument of North Indian and Pakistani classical music, where it is accompanied by tabla drums and the tambura lute.',
  more_info: 'Sitar comes from the name \'setar\' which means \'three strings\'.',
  geographical_region: 'South Asia',
  town: 'Jaipur',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Sitar.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/LwBE8S8_m-4'
)
file = File.open(Rails.root.join("db/seeds/instruments/sitar.jpg"))
sitar.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/SITAR P.jpg"))
sitar.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Slit drum
slit_drum = Instrument.create!(
  name: 'Slit drum',
  family: 'Percussions',
  tessitura: 'Variable depending on size',
  materials: 'Carved from a single log',
  origins: 'Common in various cultures around the world, particularly in Africa and the Pacific.',
  more_info: 'Also known as a slit drum or log drum.',
  geographical_region: 'Africa',
  town: 'Kinshasa',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Tambour_bois_fente.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/0760zaJdrD0'
)
file = File.open(Rails.root.join("db/seeds/instruments/slit_drum.jpg"))
slit_drum.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/SLIT DRUM.jpg"))
slit_drum.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Balalaika
balalaika = Instrument.create!(
  name: 'Balalaika',
  family: 'Strings',
  tessitura: 'Varies by size; there are prima, secunda, alto, bass, and contrabass balalaikas',
  materials: 'Wood, with a triangular body shape',
  origins: 'The balalaika is a traditional Russian stringed instrument, dating back to the 17th century.',
  more_info: 'Characterized by its distinctive triangular body and three strings, often played with the fingers without the use of a pick.',
  geographical_region: 'Europe',
  town: 'Krasnoïarsk',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Balalaika.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/UAfuMol1e-0'
)

file = File.open(Rails.root.join("db/seeds/instruments/balalaika.jpg"))
balalaika.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/BALALAIKA P.jpg"))
balalaika.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

angklung = Instrument.create!(
  name: 'Angklung',
  family: 'Percussions',
  tessitura: 'Variable, depends on size and tuning',
  materials: 'Bamboo tubes suspended within a bamboo frame',
  origins: 'Traditionally from the Sundanese people of West Java and Banten provinces in Indonesia.',
  more_info: 'The Angklung produces sound when shaken. Each Angklung only produces one note.',
  geographical_region: 'South Asia',
  town: 'Bandung',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Angklung.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/BEsxbMH88s4'
)
file = File.open(Rails.root.join("db/seeds/instruments/angklung.jpg"))
angklung.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/ANGKLUNG P.jpg"))
angklung.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# --- Atumpan ---
atumpan = Instrument.create!(
  name: 'Atumpan',
  family: 'Percussions',
  tessitura: 'Low to mid-range',
  materials: 'Wood with stretched animal skin',
  origins: 'Traditional drum from the Akan people of Ghana.',
  more_info: 'The Atumpan is often referred to as the "talking drum" because of its ability to mimic the intonation of spoken language.',
  geographical_region: 'Africa',
  town: 'Kumasi',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Atumpan.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/ZxYwFOwUTl0'
)
file = File.open(Rails.root.join("db/seeds/instruments/atumpan.jpg"))
atumpan.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/ATUMPAN P.jpg"))
atumpan.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")



# --- Algaïta ---
algaita = Instrument.create!(
  name: 'Algaïta',
  family: 'Woodwinds',
  tessitura: 'Mid-range',
  materials: 'Wood with a double reed',
  origins: 'Commonly used in the Hausa regions of Northern Nigeria and Niger.',
  more_info: 'A loud outdoor instrument, often accompanied by drumming.',
  geographical_region: 'Africa',
  town: 'Kano',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Algaita.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/JB44JHu55Zs'
)
file = File.open(Rails.root.join("db/seeds/instruments/algaita.jpg"))
algaita.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/ALGAITA P.jpg"))
algaita.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")



# --- Accordéon à touches ---
key_accordion = Instrument.create!(
  name: 'Key Accordion',
  family: 'Woodwinds',
  tessitura: 'Mid-range',
  materials: 'Wood, metal, and plastic',
  origins: 'Originated in Europe in the early 19th century.',
  more_info: 'A keyboard accordion with piano-style keys. Widely used in many forms of Western music.',
  geographical_region: 'Europe',
  town: 'Versaille',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Accordeon_touche.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/9yY1aqaGyZM'
)
file = File.open(Rails.root.join("db/seeds/instruments/accordeon_touches.jpg"))
key_accordion.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/ACCORDEON TOUCHES.jpg"))
key_accordion.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# --- Accordéon à boutons ---
accordeon_boutons = Instrument.create!(
  name: 'Button accodeon',
  family: 'Woodwinds',
  tessitura: 'Mid-range',
  materials: 'Wood, metal, and plastic',
  origins: 'Evolved in Europe and is popular in traditional music of various countries.',
  more_info: 'Uses button-style keys and produces different pitches depending on whether the bellows are compressed or expanded.',
  geographical_region: 'Europe',
  town: 'Marseille',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Accordeon_bouton.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/6J-otnwNv6M'
)
file = File.open(Rails.root.join("db/seeds/instruments/accordeon_boutons.jpg"))
accordeon_boutons.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/ACCORDEON BOUTONS.jpg"))
accordeon_boutons.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")



# --- Bala ---
bala = Instrument.create!(
  name: 'Bala',
  family: 'Percussions',
  tessitura: 'Variable across a wide range',
  materials: 'Wooden keys with gourd resonators',
  origins: 'Traditionally from the Mandinka people of West Africa.',
  more_info: 'Also known as the balafon. Similar to a xylophone but with a distinct African character.',
  geographical_region: 'Africa',
  town: 'Bamako',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Bala.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/kXXhp_bZvck'
)
file = File.open(Rails.root.join("db/seeds/instruments/bala.jpg"))
bala.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/BALA P.jpg"))
bala.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")



# --- Banjo ---
banjo = Instrument.create!(
  name: 'Banjo',
  family: 'Strings',
  tessitura: 'High to mid-range',
  materials: 'Wood with a circular drum-like body',
  origins: 'Developed in the United States from African and European instruments.',
  more_info: 'Characterized by its twangy sound, it is often associated with country, folk, and bluegrass music.',
  geographical_region: 'North America',
  town: 'Nashville',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Banjo.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/qcDylz37bnY'
)
file = File.open(Rails.root.join("db/seeds/instruments/banjo.jpg"))
banjo.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/BANJO P.jpg"))
banjo.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


# --- Basson ---
basson = Instrument.create!(
  name: 'Bassoon',
  family: 'Woodwinds',
  tessitura: 'Bass to tenor',
  materials: 'Usually made of maple wood',
  origins: 'Developed in the 16th century in Europe, evolving from earlier double-reeded instruments.',
  more_info: 'Characterized by its rich, dark tone, the bassoon plays a crucial role in orchestras and wind ensembles.',
  geographical_region: 'Europe',
  town: 'Berlin',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Basson.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/5XoanCFRRtE'
)
file = File.open(Rails.root.join("db/seeds/instruments/basson.jpg"))
basson.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/BASSON P.jpg"))
basson.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# --- Batterie (Drums) ---
batterie = Instrument.create!(
  name: 'Drums',
  family: 'Percussions',
  tessitura: 'Variable from deep bass (kick drum) to high pitch (cymbals)',
  materials: 'Wood, metal, and synthetic materials',
  origins: 'Drums have ancient origins, seen in many cultures globally. Modern drum kits evolved in the U.S. during the 20th century.',
  more_info: 'A typical drum kit includes a combination of drums and cymbals played by sticks, brushes, or hands.',
  geographical_region: 'North America',
  town: 'New Orleans',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Batterie.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/45UQSmiMGaI'
)
file = File.open(Rails.root.join("db/seeds/instruments/batterie.jpg"))
batterie.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/BATTERIE P.jpg"))
batterie.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# --- Berimbau ---
berimbau = Instrument.create!(
  name: 'Berimbau',
  family: 'Strings',
  tessitura: 'none',
  materials: 'Wooden bow with a steel string, and a gourd resonator',
  origins: 'An integral part of Brazilian Capoeira, the berimbau has African roots.',
  more_info: 'Its distinctive sound guides the rhythm and style of the Capoeira game.',
  geographical_region: 'South America',
  town: 'Salvador',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Berimbau.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/GI6_eQy-OuI'
)
file = File.open(Rails.root.join("db/seeds/instruments/berimbau.jpg"))
berimbau.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/BERIMBAU P.jpg"))
berimbau.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# --- Bloc à deux tons (Two-tone block) ---
two_tone_block = Instrument.create!(
  name: 'Two-tone block',
  family: 'Percussions',
  tessitura: 'High-pitched',
  materials: 'Wood or synthetic materials',
  origins: 'Inspired by traditional wooden temple blocks used in East Asia.',
  more_info: 'Produces two different pitches and is commonly used in Afro-Cuban and Latin music.',
  geographical_region: 'South America',
  town: 'Havana',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Bloc2tons.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/zxcNP7pHXNM'
)
file = File.open(Rails.root.join("db/seeds/instruments/two_tone_block.jpg"))
two_tone_block.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/TWO_TONE_BLOCK P.jpg"))
two_tone_block.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# --- Bonang ---
bonang = Instrument.create!(
  name: 'Bonang',
  family: 'Percussions',
  tessitura: 'Mid-range',
  materials: 'Bronze or brass pots mounted on a wooden frame',
  origins: 'Integral to the Javanese and Balinese gamelan ensemble of Indonesia.',
  more_info: 'It consists of several gongs, each producing a different note.',
  geographical_region: 'South Asia',
  town: 'Yogyakarta',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Bonang.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/VXXyiGoAtrA'
)
file = File.open(Rails.root.join("db/seeds/instruments/bonang.jpg"))
bonang.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/BONANG P.jpg"))
bonang.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")



# --- Bongos ---
bongos = Instrument.create!(
  name: 'Bongos',
  family: 'Percussions',
  tessitura: 'High-pitched',
  materials: 'Wood with animal skin heads',
  origins: 'Originated in Cuba, drawing inspiration from African hand drums.',
  more_info: 'Consists of two drums attached to each other, and is played using hands.',
  geographical_region: 'South America',
  town: 'Santiago de Cuba',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Bongos.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/I9gzjPLh-IA'
)
file = File.open(Rails.root.join("db/seeds/instruments/bongos.jpg"))
bongos.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/BONGOS P.jpg"))
bongos.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# --- Bouzouki ---
bouzouki = Instrument.create!(
  name: 'Bouzouki',
  family: 'Strings',
  tessitura: 'Mid to high range',
  materials: 'Wood with steel strings',
  origins: 'Introduced to Greece in the 1900s, influenced by ancient Greek and Turkish instruments.',
  more_info: 'Commonly used in Greek folk music, the bouzouki has a sharp and clear sound.',
  geographical_region: 'Europe',
  town: 'Tripoli',
  audio: 'Bouzouki.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/zx-a_17OVc4'
)
file = File.open(Rails.root.join("db/seeds/instruments/bouzouki.jpg"))
bouzouki.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/BOUZOUKI P.jpg"))
bouzouki.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


# --- Bugle ---
bugle = Instrument.create!(
  name: 'Bugle',
  family: 'Brass',
  tessitura: 'Mid-range',
  materials: 'Brass or copper, with no valves or keys',
  origins: 'Originally used for signaling in the military, it has ancient roots, with early forms seen in Rome.',
  more_info: 'Produces sound through embouchure and has limited notes due to the lack of valves.',
  geographical_region: 'Europe',
  town: 'London',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Bugle.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/DHODo_SlxRc'
)
file = File.open(Rails.root.join("db/seeds/instruments/bugle.jpg"))
bugle.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/BUGLE P.jpg"))
bugle.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# --- Cajon ---
cajon = Instrument.create!(
  name: 'Cajon',
  family: 'Percussions',
  tessitura: 'Low to mid-range',
  materials: 'Primarily wood',
  origins: 'Originated in Peru, the Cajon was influenced by African slaves who made these instruments from shipping crates.',
  more_info: 'It is a box-shaped percussion instrument played by slapping the front face with hands.',
  geographical_region: 'South America',
  town: 'Lima',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/cajon.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/y6Q3l8t2XdU'
)
file = File.open(Rails.root.join("db/seeds/instruments/cajon.jpg"))
cajon.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/CAJON P.jpg"))
cajon.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")



# --- Carillon ---
carillon = Instrument.create!(
  name: 'Carillon',
  family: 'Percussions',
  tessitura: 'Variable depending on number of bells',
  materials: 'Bronze bells',
  origins: 'Originated in Europe, carillons can be found in church towers and municipal buildings.',
  more_info: 'Played with a keyboard, the carillon has at least 23 bells producing harmonized melodies.',
  geographical_region: 'Europe',
  town: 'Bruges',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Carillon.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/FKekHg5VaoI'
)
file = File.open(Rails.root.join("db/seeds/instruments/carillon.jpg"))
carillon.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/CARILLON P.jpg"))
carillon.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# --- Castanets (Castagnettes) ---
castanets = Instrument.create!(
  name: 'Castanets',
  family: 'Percussions',
  tessitura: 'High-pitched',
  materials: 'Wood, sometimes plastic',
  origins: 'With ancient roots, castanets are especially known for their role in Spanish flamenco music.',
  more_info: 'They are hand-held percussion instruments producing clicking sounds when clapped together.',
  geographical_region: 'Europe',
  town: 'Seville',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Castagnettes.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/TuHHUDnFSO0'
)
file = File.open(Rails.root.join("db/seeds/instruments/castanets.jpg"))
castanets.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/CASTANETS P.jpg"))
castanets.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


# --- Chalumeau ---
chalumeau = Instrument.create!(
  name: 'Chalumeau',
  family: 'Woodwinds',
  tessitura: 'Mid to high range',
  materials: 'Wood, with metal keys',
  origins: 'The chalumeau is a single-reed woodwind instrument and is considered the predecessor to the modern clarinet.',
  more_info: 'Popular during the Baroque period, its sound is mellower than that of the clarinet.',
  geographical_region: 'Europe',
  town: 'Lille',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Chalumeau.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/GQfWlgdja9Q'
)
file = File.open(Rails.root.join("db/seeds/instruments/chalumeau.jpg"))
chalumeau.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/CHALUMEAU P.jpg"))
chalumeau.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


# --- Charango ---
charango = Instrument.create!(
  name: 'Charango',
  family: 'Strings',
  tessitura: 'Mid to high range',
  materials: 'Wood and traditionally armadillo shells',
  origins: 'Originating in the Andes, the charango has 10 strings and is often used in traditional Andean music.',
  more_info: 'With its small size, it resembles a ukulele and has a unique, bright sound.',
  geographical_region: 'South America',
  town: 'La Paz',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Charango.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/jbJ3b8SW8Bw'
)
file = File.open(Rails.root.join("db/seeds/instruments/charango.jpg"))
charango.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/CHARANGO P.jpg"))
charango.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


# Dung chen
dung_chen = Instrument.create!(
  name: 'Dung chen',
  family: 'Woodwinds',
  tessitura: 'Varies depending on size',
  materials: 'Brass or copper, sometimes with silver or gold decoration.',
  origins: 'Indigenous to the Tibetan region.',
  more_info: 'Long trumpet or horn used in Tibetan Buddhist ceremonies. It produces deep tones that are used to call together the community and spirits.',
  geographical_region: 'Central Asia and East Asia',
  town: 'Lhasa',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Dungchen.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/cO9oUe0S-Lg'
)
file = File.open(Rails.root.join("db/seeds/instruments/dung_chen.jpg"))
dung_chen.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/DUNG_CHEN P.jpg"))
dung_chen.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")



# Contrebasse (Double Bass)
contrebasse = Instrument.create!(
  name: 'Contrabass',
  family: 'Strings',
  tessitura: 'E1 to G4',
  materials: 'Usually carved from spruce or maple wood.',
  origins: 'Has its roots in Europe during the 15th century, evolving from the viol family of instruments.',
  more_info: 'Also known as a double bass, it is the largest and lowest-pitched bowed string instrument in the modern symphony orchestra.',
  geographical_region: 'Europe',
  town: 'Cremona',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Contrebasse.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/pyUZh_Cbw6Q'
)
file = File.open(Rails.root.join("db/seeds/instruments/contrebasse.jpg"))
contrebasse.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/CONTREBASSE P.jpg"))
contrebasse.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


# Flûte Piccolo
flute_piccolo = Instrument.create!(
  name: 'Piccolo',
  family: 'Woodwinds',
  tessitura: 'D5 to C8',
  materials: 'Wood, silver, or other metals.',
  origins: 'Derived from older flutes and adapted in Europe.',
  more_info: 'The highest pitched instrument in the orchestra, producing a bright, piercing sound. It is half the size of a standard concert flute.',
  geographical_region: 'Europe',
  town: 'Milan',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Flute_piccolo.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/y-twGDZeYs4'
)
file = File.open(Rails.root.join("db/seeds/instruments/piccolo.jpg"))
flute_piccolo.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/PICCOLO P.jpg"))
flute_piccolo.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Guimbarde
guimbarde = Instrument.create!(
  name: 'Jaw harp',
  family: 'Percussions',
  tessitura: 'Varies based on size and design',
  materials: 'Steel, bamboo, or bone.',
  origins: 'Ancient instrument found in various forms across Asia, Europe, and Oceania.It is played by plucking a reed while altering the shape of the mouth to produce different pitches.',
  more_info: 'Some 5th-century Jew\'s harps have been found in their owners\' tombs, proving that they were considered valuable objects.',
  geographical_region: 'Central Asia and East Asia',
  town: 'Ulaanbaatar',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Guimbarde.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/tXLoP9iSU5Y'
)
file = File.open(Rails.root.join("db/seeds/instruments/guimbarde.jpg"))
guimbarde.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/GUIMBARDE P.jpg"))
guimbarde.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


# Guitare basse Steinberger
guitare_basse_steinberger = Instrument.create!(
  name: 'Steinberger',
  family: 'Strings',
  tessitura: 'E1 to G3',
  materials: 'Carbon fiber or wood, depending on the model.',
  origins: 'Introduced in the 1980s by Ned Steinberger.',
  more_info: 'Distinctive for its minimalist headless design. Known for its clear, balanced sound.',
  geographical_region: 'North America',
  town: 'New York City',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Guitare_basse_steinberger.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/6Cn45Thte6A'
)
file = File.open(Rails.root.join("db/seeds/instruments/steinberger.jpg"))
guitare_basse_steinberger.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/STEINBERGER P.jpg"))
guitare_basse_steinberger.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Guitare acoustique (Acoustic Guitar)
guitare_acoustique = Instrument.create!(
  name: 'Acoustic guitar',
  family: 'Strings',
  tessitura: 'E2 to E6',
  materials: 'Various woods like spruce, cedar, and rosewood.',
  origins: 'Roots trace back to ancient civilizations but modern design evolved in Spain.',
  more_info: 'A string instrument played by plucking or strumming. Does not require amplification.',
  geographical_region: 'Europe',
  town: 'Madrid',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Guitare_acoust.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/L85-8eZdQKw'
)
file = File.open(Rails.root.join("db/seeds/instruments/guit.jpg"))
guitare_acoustique.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/GUIT P.jpg"))
guitare_acoustique.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


# Harpe celtique (Celtic Harp)
harpe_celtique = Instrument.create!(
  name: 'Celtic Harp',
  family: 'Strings',
  tessitura: 'Varies based on size, generally C2 to C6',
  materials: 'Wood, strings are usually nylon or gut.',
  origins: 'Ancient instrument with roots in Ireland and Scotland.',
  more_info: 'Smaller than concert harps, with a rich history in Celtic music and lore.',
  geographical_region: 'Europe',
  town: 'Dublin',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Harpe_celte.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/qDh3XzCLTqk'
)
file = File.open(Rails.root.join("db/seeds/instruments/celtic_harp.jpg"))
harpe_celtique.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/CELTIC HARP P.jpg"))
harpe_celtique.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


# Luth (Lute)
luth = Instrument.create!(
  name: 'Luth',
  family: 'Strings',
  tessitura: 'Varies, often D2 to A5',
  materials: 'Wood, with gut or nylon strings.',
  origins: 'Medieval Europe, influenced by earlier Arab oud.',
  more_info: 'Played by plucking, it was a popular instrument during the Renaissance and Baroque periods.',
  geographical_region: 'Europe',
  town: 'Venice',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Luth.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/FnpaMm_2QYc'
)
file = File.open(Rails.root.join("db/seeds/instruments/luth.jpg"))
luth.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/LUTH P.jpg"))
luth.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Mandoline (Mandolin)
mandoline = Instrument.create!(
  name: 'Mandolin',
  family: 'Strings',
  tessitura: 'G3 to A6',
  materials: 'Wood, steel strings.',
  origins: 'Developed in Italy in the 18th century.',
  more_info: 'Has a characteristic rounded body and is played with a plectrum.',
  geographical_region: 'Europe',
  town: 'Naples',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Mandoline.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/lUZKsro4jSs'
)
file = File.open(Rails.root.join("db/seeds/instruments/mandoline.jpg"))
mandoline.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/MANDOLINE P.jpg"))
mandoline.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Trompette (Trumpet)
trompette = Instrument.create!(
  name: 'Trumpet',
  family: 'Brass',
  tessitura: 'F♯3 to D6',
  materials: 'Brass.',
  origins: 'Antiquity, with the modern valved trumpet developed in the early 19th century.',
  more_info: 'A wind instrument that uses valves to change pitch. Widely used in various music genres.',
  geographical_region: 'Europe',
  town: 'Vienna',
  audio: 'http://www.instrumentsdumonde.fr/instrument/sons/Trompette.mp3',
  youtube_embed_url: 'https://www.youtube.com/embed/2nPwkb9ZyPQ'
)
file = File.open(Rails.root.join("db/seeds/instruments/trumpet.jpg"))
trompette.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/TRUMPET P.jpg"))
trompette.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


# Nyckelharpa
nyckelharpa = Instrument.create!(
  name: 'Nyckelharpa',
  family: 'Strings',
  tessitura: 'C3 to C6',
  materials: 'Wood, with steel or gut strings.',
  origins: 'Sweden, dating back to the medieval period.',
  more_info: 'A traditional Swedish instrument played with a bow, and is distinctive for its keys that fret the strings.',
  geographical_region: 'Europe',
  town: 'Uppsala',
  # audio: '',
  youtube_embed_url: 'https://www.youtube.com/embed/e7sK5OiJHHQ'
)
file = File.open(Rails.root.join("db/seeds/instruments/nyckelharpa.jpg"))
nyckelharpa.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/NYCKELHARPA P.jpg"))
nyckelharpa.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")

# Autoharp
autoharpe = Instrument.create!(
  name: 'Autoharp',
  family: 'Strings',
  tessitura: 'Generally G2 to E6',
  materials: 'Wood with steel strings.',
  origins: 'Originally patented in the US in the late 19th century.',
  more_info: 'A string instrument with a series of chord bars attached to dampers. When a chord bar is pressed, it mutes all strings not in that chord.',
  geographical_region: 'North America',
  town: 'Philadelphia',
  # audio: '',
  youtube_embed_url: 'https://www.youtube.com/embed/9lcxzZcAFTE'
)
file = File.open(Rails.root.join("db/seeds/instruments/autoharpe.jpg"))
autoharpe.picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
file = File.open(Rails.root.join("db/seeds/discovery/AUTOHARPE P.jpg"))
autoharpe.photos.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")








# FAKE SEED


# --- Cithare (Zither) ---
zither = Instrument.create!(
  name: 'Zither',
  family: 'Strings',
  town: 'Innsbruck',
)

# --- Clairon (Bugle) ---
bugle = Instrument.create!(
  name: 'Bugle',
  family: 'Brass',
  town: 'Brussels',
)

# --- Clarinette (Clarinet) ---
clarinet = Instrument.create!(
  name: 'Clarinet',
  family: 'Woodwinds',
  town: 'Budapest',
)

# --- Clavicorde (Clavichord) ---
clavichord = Instrument.create!(
  name: 'Clavichord',
  family: 'Strings',
  town: 'Zermatt',
)

# --- Contrebasson (Contrabassoon) ---
contrabassoon = Instrument.create!(
  name: 'Contrabassoon',
  family: 'Woodwinds',
  town: 'Pretoria',
)

# --- Cor anglais (English Horn) ---
english_horn = Instrument.create!(
  name: 'English Horn',
  family: 'Woodwinds',
  town: 'Prague',
)

# --- Curtal (Dulcian) ---
dulcian = Instrument.create!(
  name: 'Dulcian',
  family: 'Woodwinds',
  town: 'Lisbon',
)

# --- Cymbalum (Cimbalom) ---
cimbalom = Instrument.create!(
  name: 'Cimbalom',
  family: 'Strings',
  town: 'Bucharest',
)

# --- Congas ---
congas = Instrument.create!(
  name: 'Congas',
  family: 'Percussions',
  town: 'Bogota',
)

# --- Darbouka ---
darbouka = Instrument.create!(
  name: 'Darbouka',
  family: 'Percussions',
  town: 'Algiers',
)

# --- Djembe ---
djembe = Instrument.create!(
  name: 'Djembe',
  family: 'Percussions',
  town: 'Kaolack',
)

# --- Duda (Bagpipe) ---
duda = Instrument.create!(
  name: 'Duda',
  family: 'Woodwinds',
  town: 'Budva',
)

# --- Dvojnice ---
dvojnice = Instrument.create!(
  name: 'Dvojnice',
  family: 'Woodwinds',
  town: 'Sarajevo',
)

# --- Epinette (Spinet) ---
spinet = Instrument.create!(
  name: 'Spinet',
  family: 'Strings',
  town: 'Antwerp',
)

# --- Fifre (Fife) ---
fife = Instrument.create!(
  name: 'Fife',
  family: 'Woodwinds',
  town: 'Edinburgh',
)

# --- Flûte nasale (Nose Flute) ---
nose_flute = Instrument.create!(
  name: 'Nose Flute',
  family: 'Woodwinds',
  town: 'Suva', # Fiji
)

# --- Flûte traversière (Transverse Flute) ---
transverse_flute = Instrument.create!(
  name: 'Transverse Flute',
  family: 'Woodwinds',
  town: 'Salto',
)

# --- Fouet (Whip) ---
whip = Instrument.create!(
  name: 'Whip',
  family: 'Percussions',
  town: 'Brisbane',
)

# --- Gender (Gamelan metallophones) ---
gender = Instrument.create!(
  name: 'Gender',
  family: 'Percussions',
  town: 'Jakarta',
)

# --- Ghara (Earthen pot) ---
ghara = Instrument.create!(
  name: 'Ghara',
  family: 'Percussions',
  town: 'Dhaka', # Bangladesh
)

# --- Glockenspiel ---
glockenspiel = Instrument.create!(
  name: 'Glockenspiel',
  family: 'Percussions',
  town: 'Stuttgart',
)

# --- Gong ageng ---
gong_ageng = Instrument.create!(
  name: 'Gong Ageng',
  family: 'Percussions',
  town: 'Surabaya',
)

# --- Güiro ---
guïro = Instrument.create!(
  name: 'Güiro',
  family: 'Percussions',
  town: 'San Jose', # Costa Rica
)

# --- Harmonica ---
harmonica = Instrument.create!(
  name: 'Harmonica',
  family: 'Free Reed',
  town: 'Chicago',
)

# --- Harmonium ---
harmonium = Instrument.create!(
  name: 'Harmonium',
  family: 'Strings',
  town: 'Kolkata',
)

# --- Hichiriki ---
hichiriki = Instrument.create!(
  name: 'Hichiriki',
  family: 'Woodwinds',
  town: 'Kyoto',
)

# --- Kalangu ---
kalangu = Instrument.create!(
  name: 'Kalangu',
  family: 'Percussions',
  town: 'Maiduguri', # Nigeria
)

# --- Kantele ---
kantele = Instrument.create!(
  name: 'Kantele',
  family: 'Strings',
  town: 'Helsinki',
)

# --- Kendang ---
kendang = Instrument.create!(
  name: 'Kendang',
  family: 'Percussions',
  town: 'Denpasar', # Bali, Indonesia
)

# --- Kéna (Quena) ---
quena = Instrument.create!(
  name: 'Quena',
  family: 'Woodwinds',
  town: 'Sucre', # Bolivia
)

# --- Kora ---
kora = Instrument.create!(
  name: 'Kora',
  family: 'Strings',
  town: 'Banjul', # Gambia
)

# --- Koto ---
koto = Instrument.create!(
  name: 'Koto',
  family: 'Strings',
  town: 'Tokyo',
)

# --- Kotsuzumi ---
kotsuzumi = Instrument.create!(
  name: 'Kotsuzumi',
  family: 'Percussions',
  town: 'Osaka',
)

# --- Kugué ---
kugué = Instrument.create!(
  name: 'Kugué',
  family: 'String',
  town: 'Asunción', # Paraguay
)

# --- Launeddas ---
launeddas = Instrument.create!(
  name: 'Launeddas',
  family: 'Woodwinds',
  town: 'Cagliari', # Sardinia, Italy
)

# --- Manjira ---
manjira = Instrument.create!(
  name: 'Manjira',
  family: 'Percussions',
  town: 'Hyderabad',
)

# --- Maracas ---
maracas = Instrument.create!(
  name: 'Maracas',
  family: 'Percussions',
  town: 'Caracas', # Venezuela
)

# --- Marimba ---
marimba = Instrument.create!(
  name: 'Marimba',
  family: 'Percussions',
  town: 'Quetzaltenango', # Guatemala
)

# --- Mridangam ---
mridangam = Instrument.create!(
  name: 'Mridangam',
  family: 'Percussions',
  town: 'Bengaluru', # India
)

# --- Muyu (Wooden Fish) ---
muyu = Instrument.create!(
  name: 'Muyu',
  family: 'Percussions',
  town: 'Hangzhou', # China
)


# --- Naqqara ---
naqqara = Instrument.create!(
  name: 'Naqqara',
  family: 'Percussions',
  town: 'Baghdad', # Iraq
)

# --- Ocarina ---
ocarina = Instrument.create!(
  name: 'Ocarina',
  family: 'Woodwinds',
  town: 'La Plata', # Argentina
)

# --- Odaïko ---
odaïko = Instrument.create!(
  name: 'Odaïko',
  family: 'Percussions',
  town: 'Sapporo', # Japan
)

# --- Pipa ---
pipa = Instrument.create!(
  name: 'Pipa',
  family: 'Strings',
  town: 'Xian', # China
)

# --- Pungi ---
pungi = Instrument.create!(
  name: 'Pungi',
  family: 'Woodwinds',
  town: 'Lucknow', # India
)

# --- Qin ---
qin = Instrument.create!(
  name: 'Qin',
  family: 'Strings',
  town: 'Wuhan', # China
)

# --- Ud (Oud) ---
oud = Instrument.create!(
  name: 'Oud',
  family: 'Strings',
  town: 'Damascus', # Syria
)

# --- Rebab arabo-andalou ---
rebab_arabo_andalou = Instrument.create!(
  name: 'Rebab Arabo-Andalou',
  family: 'Strings',
  town: 'Tangier', # Morocco
)

# --- Rebec ---
rebec = Instrument.create!(
  name: 'Rebec',
  family: 'Strings',
  town: 'Granada', # Spain
)

# --- Rhombe (Bullroarer) ---
bullroarer = Instrument.create!(
  name: 'Bullroarer',
  family: 'Percussions',
  town: 'Wellington', # New Zealand
)

# --- Rkang-gling ---
rkang_gling = Instrument.create!(
  name: 'Rkang-gling',
  family: 'Woodwinds',
  town: 'Thimphu', # Bhutan
)

# --- Zummara ---
zummara = Instrument.create!(
  name: 'Zummara',
  family: 'Woodwinds',
  town: 'Alexandria', # Egypt
)

# --- Zurna ---
zurna = Instrument.create!(
  name: 'Zurna',
  family: 'Woodwinds',
  town: 'Baku', # Azerbaijan
)

# --- Zukra ---
zukra = Instrument.create!(
  name: 'Zukra',
  family: 'Woodwinds',
  town: 'Tunis', # Tunisia
)

# --- Zilli masa (Cymbals) ---
zilli_masa = Instrument.create!(
  name: 'Zilli Masa',
  family: 'Percussions',
  town: 'Ankara', # Turkey
)

# --- Zampogna ---
zampogna = Instrument.create!(
  name: 'Zampogna',
  family: 'Woodwinds',
  town: 'Palermo', # Italy
)

# --- Yueqin ---
yueqin = Instrument.create!(
  name: 'Yueqin',
  family: 'Strings',
  town: 'Guangzhou', # China
)

# --- Vibraphone ---
vibraphone = Instrument.create!(
  name: 'Vibraphone',
  family: 'Percussions',
  town: 'Toronto', # Canada
)

# --- Valiha ---
valiha = Instrument.create!(
  name: 'Valiha',
  family: 'Strings',
  town: 'Antananarivo', # Madagascar
)

# --- Sahnaï (Shehnai) ---
shehnai = Instrument.create!(
  name: 'Shehnai',
  family: 'Woodwinds',
  town: 'Varanasi', # India
)

# --- Saqueboute (Sackbut) ---
sackbut = Instrument.create!(
  name: 'Sackbut',
  family: 'Brass',
  town: 'Geneva', # Switzerland
)

# --- Sarangi ---
sarangi = Instrument.create!(
  name: 'Sarangi',
  family: 'Strings',
  town: 'Kathmandu', # Nepal
)

# --- Saùng-gauk ---
saùng_gauk = Instrument.create!(
  name: 'Saùng-gauk',
  family: 'Strings',
  town: 'Naypyidaw', # Myanmar
)

# --- Shakuhachi ---
shakuhachi = Instrument.create!(
  name: 'Shakuhachi',
  family: 'Woodwinds',
  town: 'Kobe', # Japan
)

# --- Shamisen ---
shamisen = Instrument.create!(
  name: 'Shamisen',
  family: 'String',
  town: 'Nagoya', # Japan
)

# --- Sistre (Sistrum) ---
sistrum = Instrument.create!(
  name: 'Sistrum',
  family: 'Percussions',
  town: 'Luxor', # Egypt
)

# --- Tam-tam ---
tam_tam = Instrument.create!(
  name: 'Tam-tam',
  family: 'Percussions',
  town: 'Yaoundé', # Cameroon
)

# --- Tambour de chaman (Shaman Drum) ---
shaman_drum = Instrument.create!(
  name: 'Shaman Drum',
  family: 'Percussions',
  town: 'Erdenet', # Mongolia
)

# --- Tambour sur cadre ou tambourin (Frame Drum) ---
frame_drum = Instrument.create!(
  name: 'Frame Drum',
  family: 'Percussions',
  town: 'Amman', # Jordan
)

# --- Tambour-hochet (Rattle Drum) ---
rattle_drum = Instrument.create!(
  name: 'Rattle Drum',
  family: 'Percussions',
  town: 'Tarija', # Bolivia
)

# --- Timbales ---
timbales = Instrument.create!(
  name: 'Timbales',
  family: 'Percussions',
  town: 'San Juan', # Puerto Rico
)

# --- Tuba ---
tuba = Instrument.create!(
  name: 'Tuba',
  family: 'Brass',
  town: 'Minneapolis', # USA
)

transverse_horn = Instrument.create!(
  name: 'Transverse Horn',
  family: 'Brass',
  town: 'Dakar', # Senegal
)

natural_trumpet = Instrument.create!(
  name: 'Natural Trumpet',
  family: 'Brass',
  town: 'Abidjan', # Ivory Coast (Côte d'Ivoire)
)

claves = Instrument.create!(
  name: 'Claves',
  family: 'Percussions',
  town: 'Montevideo', # Uruguay
)

andean_harp = Instrument.create!(
  name: 'Andean Harp',
  family: 'Strings',
  town: 'Arequipa', # Peru
)

# --- Guitare basse (Bass Guitar) ---
bass_guitar = Instrument.create!(
  name: 'Bass Guitar',
  family: 'Strings',
  town: 'Boston', # Massachusetts, USA
)

# --- Guitare basse sans frette (Fretless Bass Guitar) ---
fretless_bass_guitar = Instrument.create!(
  name: 'Fretless Bass Guitar',
  family: 'Strings',
  town: 'Providence', # Rhode Island, USA
)

# --- Guitare classique (Classical Guitar) ---
classical_guitar = Instrument.create!(
  name: 'Classical Guitar',
  family: 'Strings',
  town: 'Palma', # Spain
)

# --- Guitare douze cordes (Twelve-string Guitar) ---
twelve_string_guitar = Instrument.create!(
  name: 'Twelve-string Guitar',
  family: 'Strings',
  town: 'Charleston', # South Carolina, USA
)

# --- Guitare électrique (Electric Guitar) ---
electric_guitar = Instrument.create!(
  name: 'Electric Guitar',
  family: 'Strings',
  town: 'Cleveland', # Ohio, USA
)

# --- Guitare électrique à caisse creuse (Hollow-body Electric Guitar) ---
hollow_body_electric_guitar = Instrument.create!(
  name: 'Hollow-body Electric Guitar',
  family: 'Strings',
  town: 'Pittsburgh', # Pennsylvania, USA
)

# --- Guitare électrique Les Paul (Les Paul Electric Guitar) ---
les_paul_electric_guitar = Instrument.create!(
  name: 'Les Paul Electric Guitar',
  family: 'Strings',
  town: 'Richmond', # Virginia, USA
)

# --- Guitare Torres (Torres Guitar) ---
torres_guitar = Instrument.create!(
  name: 'Torres Guitar',
  family: 'Strings',
  town: 'Ronda', # SPAIN
)


# --- Hand Horn ---
hand_horn = Instrument.create!(
  name: 'Hand Horn',
  family: 'Brass',
  town: 'Lyon', # France
)

# --- French Horn (Harmony Horn) ---
french_horn = Instrument.create!(
  name: 'French Horn',
  family: 'Brass',
  town: 'Munich', # Germany
)

# --- Post Horn ---
post_horn = Instrument.create!(
  name: 'Post Horn',
  family: 'Brass',
  town: 'Zurich', # Switzerland
)

# --- Alpine Horn ---
alpine_horn = Instrument.create!(
  name: 'Alpine Horn',
  family: 'Brass',
  town: 'Bern', # Switzerland
)

# --- Northumberland Bagpipes ---
northumberland_bagpipes = Instrument.create!(
  name: 'Northumberland Bagpipes',
  family: 'Woodwinds',
  town: 'Newcastle', # United Kingdom
)

# --- Cornett ---
cornett = Instrument.create!(
  name: 'Cornett',
  family: 'Brass',
  town: 'Ypres', # Belgium
)

# --- Cornet ---
cornet = Instrument.create!(
  name: 'Cornet',
  family: 'Brass',
  town: 'Gand', # Belgium
)

# --- Saxhorn ---
saxhorn = Instrument.create!(
  name: 'Saxhorn',
  family: 'Brass',
  town: 'Liege', # Belgium
)

# --- Wagner Tuba ---
wagner_tuba = Instrument.create!(
  name: 'Wagner Tuba',
  family: 'Brass',
  town: 'Leipzig', # Germany
)

# --- Piccolo Trumpet ---
piccolo_trumpet = Instrument.create!(
  name: 'Piccolo Trumpet',
  family: 'Brass',
  town: 'Dresden', # Germany
)

# --- Slide Trumpet ---
slide_trumpet = Instrument.create!(
  name: 'Slide Trumpet',
  family: 'Brass',
  town: 'Liberec', # Czech Republic
)

# --- Valve Trombone ---
valve_trombone = Instrument.create!(
  name: 'Valve Trombone',
  family: 'Brass',
  town: 'Pecs', # Hungary
)

# --- Trombone ---
trombone = Instrument.create!(
  name: 'Trombone',
  family: 'Brass',
  town: 'Warsaw', # Poland
)



puts 'Adding questions and answers...'
question1= Question.create!(prompt: 'Which one of these is the Dobro?', instrument_id: dobro.id)
question2= Question.create!(prompt: 'Which one of these is the Sitar?', instrument_id: sitar.id)
question3= Question.create!(prompt: 'Which one of these is the Suona?', instrument_id: suona.id)
question4= Question.create!(prompt: 'Which one of these is the Nay?', instrument_id: nay.id)
question5= Question.create!(prompt: 'Which one of these is the Balalaika?', instrument_id: balalaika.id)

puts '...The circle is completed!'
