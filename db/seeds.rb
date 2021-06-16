# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product = Product.create(name: "Juno-106", price: 2600, image_url: "http://www.rolandus.com/blog/wp-content/uploads/2013/02/1984-JUNO-106.jpeg", description: "The Juno-106 is a very common and widely used analog polysynth. It continues to be one of the most popular analog synths due to its great sound and easy programmability. It was the next major incarnation of the Juno-series, following the Juno-60. While it has virtually the same synth engine as the Juno-60, the 106 added extensive MIDI control making it one of Roland's first MIDI-equipped synthesizers. There was also increased patch memory storage, up to 128 patches instead of the 56 patches available in the Juno-60. However, the Juno-60 is often said to have a slight sonic edge over the more advanced 106. The 60 had the ability to modulate oscillator pulse from its envelope and has a punchier sound quality.")

product = Product.create(name: "Pro One", price: 1600, image_url: "http://www.vintagesynth.com/sites/default/files/2017-05/sci_proone.jpg", description: "The Sequential Pro One is a wicked little monosynth! It comes from the same period and genre as the Roland SH-101 and Moog Prodigy. The Pro One was basically Sequential's attempt at taking their legendary Prophet 5 poly-synth and packing it into a compact, inexpensive, monophonic analog synth! It has two VCOs, a great 4-pole lowpass filter, two ADSR envelopes (one for filter), and a compact three-octave keyboard. With a Pro-One, you can easily create punchy analog bass-lines and leads or quirky analog synth effects.")
