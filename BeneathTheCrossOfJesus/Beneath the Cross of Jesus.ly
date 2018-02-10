% Lily was here -- automatically converted by /usr/local/bin/midi2ly from /work/colin/music/MPS/BeneathTheCrossOfJesus/Beneath the Cross of Jesus.mid
\version "2.14.0"

\layout {
  \context {
    \Voice
    \remove "Note_heads_engraver"
    \consists "Completion_heads_engraver"
    \remove "Rest_engraver"
    \consists "Completion_rest_engraver"
  }
}

trackAchannelA = {


  \key ees \major

  \time 4/4


  \key ees \major

  \set Staff.instrumentName = "Beneath the Cross of Jesus"

  % [TEXT_EVENT] F. C. Maker

  % [COPYRIGHT_NOTICE] Copyright ~
  \skip 2.
  \tempo 4 = 92
  \skip 4*65
  \tempo 4 = 92

  \tempo 4 = 92

  \time 1/4
  \skip 4
  | % 19

  \time 4/4
  \skip 1*16
  \tempo 4 = 92

  \tempo 4 = 92

  \time 1/4
  \skip 4
  | % 36

  \time 4/4
  \skip 1*15
  \time 8/4

}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {
  \skip 2.
  \set Staff.instrumentName = "TENOR 1"

}

trackBchannelB = \relative c {
  r2. bes'4 bes4. bes8 c4 c
  | % 2
  bes2 bes4 bes bes4. bes8 c4 bes
  | % 3
  bes2. b4 c4. ees8 ees4 f
  | % 4
  ees4 c c c c4. c8 c4 c
  | % 5
  b2. bes4 bes4. aes8 g4 aes
  | % 6
  bes4 c des des c4. c8 c4 c
  | % 7
  c2. c8 c f4. ees8 d4 bes
  | % 8
  bes4 bes des c8 c bes4. g8 bes4 aes
  | % 9
  g2. r4 bes bes4. bes8 c4
  | % 10
  c4 bes2 bes4 bes bes4. bes8 c4
  | % 11
  bes4 bes2. b4 c4. ees8 ees4
  | % 12
  f4 ees c c c c4. c8 c4
  | % 13
  c4 b2. bes4 bes4. aes8 g4
  | % 14
  aes4 bes c des des c4. c8 c4
  | % 15
  c4 c2. c8 c f4. ees8 d4
  | % 16
  bes4 bes bes des c8 c bes4. g8 bes4
  | % 17
  aes4 g2. r4 bes bes4. bes8
  | % 18
  c4 c bes2 bes4 bes bes4. bes8
  | % 19
  c4 bes bes2. b4 c4. ees8
  | % 20
  ees4 f ees c c c c4. c8
  | % 21
  c4 c b2. bes4 bes4. aes8
  | % 22
  g4 aes bes c des des c4. c8
  | % 23
  c4 c c2. c8 c f4. ees8
  | % 24
  d4 bes bes bes des c8 c bes4. g8
  | % 25
  bes4 aes g2.
}

trackB = <<

  \clef bass

  \context Voice = voiceA \trackBchannelA
  \context Voice = voiceB \trackBchannelB
>>


trackCchannelA = \lyricmode {
  " "2.
  % [SEQUENCE_TRACK_NAME] TENOR 2
  "Be"4 "neath "4. "the "8 "cross "4 "of "
  | % 2
  "Je"2 "sus "4 "I " "fain "4. "would "8 "take "4 "my "
  | % 3
  "stand, "2. "The "4 "shad"4. "ow "8 "of "4 "a "
  | % 4
  "might" "y " "rock " "with" "in "4. "a "8 "wea"4 "ry "
  | % 5
  "land; "2. "A "4 "home "4. "with"8 "in "4 "the "
  | % 6
  "wil" "der" "ness, " "A " "rest "4. "up"8 "on "4 "the "
  | % 7
  "way, "2. "From "8 "the " "burn"4. "ing "8 "of "4 "the "
  | % 8
  "noon" "tide " "heat, " "And "8 "the " "bur"4. "den "8 "of "4
  "the "
  | % 9
  "day. "1 "Be"4 "Up"4 "neath "4 "on "4. "the "4 "that "8
  "cross "4 "cross "4
  | % 10
  "of "4 "of "4 "Je"4 "Je"2 "sus "4 "sus, "4
  "I "4 "Mine "4 "fain "4 "eye "4. "would "4 "at "8
  "take "4 "times "4
  | % 11
  "my "4 "can "4 "stand, "4 "see "2. "The "4 "The "4
  "shad"4 "ver"4. "ow "4 "y "8 "of "4 "dy"4
  | % 12
  "a "4 "ing "4 "might"4 "form "4 "y "4 "of "4
  "rock "4 "One "4 "with"4 "Who "4 "in "4 "suf"4.
  "a "4 "fered "8 "wea"4 "there "4
  | % 13
  "ry "4 "for "4 "land; "4 "me; "2. "A "4 "And "4
  "home "4 "from "4. "with"4 "my "8 "in "4 "smit"4
  | % 14
  "the "4 "ten "4 "wil"4 "heart "4 "der"4 "with "4
  "ness, "4 "tears "4 "A "4 "Two "4 "rest "4 "won"4.
  "up"4 "ders "8 "on "4 "I "4
  | % 15
  "the "4 "con"4 "way, "4 "fess: "2. "From "4 "The "8
  "the " "burn"4 "won"4. "ing "4 "ders "8 "of "4 "of "4
  | % 16
  "the "4 "His "4 "noon"4 "glo"4 "tide "4 "rious "4
  "heat, "4 "Love, "4 "And "4 "and "8 "the " "bur"4 "my "4.
  "den "4 "own "8 "of "4 "worth"4
  | % 17
  "the "4 "less"4 "day. "4 "ness. "1 "Be"4 "I "4
  "neath "4 "take, "4. "the "4 "O "8
  | % 18
  "cross "4 "Cross, "4 "of "4 "thy "4 "Je"4 "shad"2
  "sus "4 "ow "4 "I "4 "For "4 "fain "4 "my "4.
  "would "4 "a"8
  | % 19
  "take "4 "bid"4 "my "4 "ing "4 "stand, "4 "place; "2.
  "The "4 "I "4 "shad"4 "ask "4. "ow "4 "no "8
  | % 20
  "of "4 "oth"4 "a "4 "er "4 "might"4 "sun"4
  "y "4 "shine "4 "rock "4 "than "4 "with"4 "the "4
  "in "4 "sun"4. "a "4 "shine "8
  | % 21
  "wea"4 "of "4 "ry "4 "His "4 "land; "4 "face; "2.
  "A "4 "Con"4 "home "4 "tent "4. "with"4 "to "8
  | % 22
  "in "4 "let "4 "the "4 "the "4 "wil"4 "world "4
  "der"4 "go "4 "ness, "4 "by, "4 "A "4 "To "4
  "rest "4 "know "4. "up"4 "no "8
  | % 23
  "on "4 "gain "4 "the "4 "or "4 "way, "4 "loss; "2.
  "From "4 "My "8 "the " "burn"4 "sin"4. "ing "4 "ful "8
  | % 24
  "of "4 "self, "4 "the "4 "my "4 "noon"4 "on"4
  "tide "4 "ly "4 "heat, "4 "shame; "4 "And "4 "My "8
  "the " "bur"4 "glo"4. "den "4 "ry "8
  | % 25
  "of "4 "all "4 "the "4 "the "4 "day. "4 "cross. "4
}

trackCchannelB = \relative c {
  r2. bes'4 bes4. bes8 a4 c
  | % 2
  bes2 g4 ees f4. g8 aes4 aes
  | % 3
  g2. g4 ees'4. ees8 ees4 d
  | % 4
  c4 bes aes g f4. f8 ges4 ges
  | % 5
  g2. g4 g4. f8 ees4 f
  | % 6
  g4 aes bes bes c4. c8 c4 g
  | % 7
  aes2. aes8 aes d4. c8 bes4 aes
  | % 8
  g4 g bes aes8 aes g4. ees8 g4 f
  | % 9
  ees2. r4 bes' bes4. bes8 a4
  | % 10
  c4 bes2 g4 ees f4. g8 aes4
  | % 11
  aes4 g2. g4 ees'4. ees8 ees4
  | % 12
  d4 c bes aes g f4. f8 ges4
  | % 13
  ges4 g2. g4 g4. f8 ees4
  | % 14
  f4 g aes bes bes c4. c8 c4
  | % 15
  g4 aes2. aes8 aes d4. c8 bes4
  | % 16
  aes4 g g bes aes8 aes g4. ees8 g4
  | % 17
  f4 ees2. r4 bes' bes4. bes8
  | % 18
  a4 c bes2 g4 ees f4. g8
  | % 19
  aes4 aes g2. g4 ees'4. ees8
  | % 20
  ees4 d c bes aes g f4. f8
  | % 21
  ges4 ges g2. g4 g4. f8
  | % 22
  ees4 f g aes bes bes c4. c8
  | % 23
  c4 g aes2. aes8 aes d4. c8
  | % 24
  bes4 aes g g bes aes8 aes g4. ees8
  | % 25
  g4 f ees2.
}

trackC = <<

  \clef bass

  \context Lyrics = voiceA \trackCchannelA
  \context Voice = voiceB \trackCchannelB
>>


trackDchannelA = {
  \skip 2.
  \set Staff.instrumentName = "BASS 1"

}

trackDchannelB = \relative c {
  r2. g'4 g4. g8 ges4 ges
  | % 2
  g2 g4 g aes4. g8 f4 d
  | % 3
  ees2. f4 g4. g8 g4 aes
  | % 4
  g4 g f ees ees4. ees8 ees4 c
  | % 5
  d2. ees4 ees4. ees8 ees4 ees
  | % 6
  ees4 ees ees ees ees4. ees8 e4 e
  | % 7
  f2. f8 f aes4. aes8 aes4 f
  | % 8
  ees4 ees ees ees8 ees ees4. ees8 d4 d
  | % 9
  ees2. r4 g g4. g8 ges4
  | % 10
  ges4 g2 g4 g aes4. g8 f4
  | % 11
  d4 ees2. f4 g4. g8 g4
  | % 12
  aes4 g g f ees ees4. ees8 ees4
  | % 13
  c4 d2. ees4 ees4. ees8 ees4
  | % 14
  ees4 ees ees ees ees ees4. ees8 e4
  | % 15
  e4 f2. f8 f aes4. aes8 aes4
  | % 16
  f4 ees ees ees ees8 ees ees4. ees8 d4
  | % 17
  d4 ees2. r4 g g4. g8
  | % 18
  ges4 ges g2 g4 g aes4. g8
  | % 19
  f4 d ees2. f4 g4. g8
  | % 20
  g4 aes g g f ees ees4. ees8
  | % 21
  ees4 c d2. ees4 ees4. ees8
  | % 22
  ees4 ees ees ees ees ees ees4. ees8
  | % 23
  e4 e f2. f8 f aes4. aes8
  | % 24
  aes4 f ees ees ees ees8 ees ees4. ees8
  | % 25
  d4 d ees2.
}

trackD = <<

  \clef bass

  \context Voice = voiceA \trackDchannelA
  \context Voice = voiceB \trackDchannelB
>>


trackEchannelA = {
  \skip 2.
  \set Staff.instrumentName = "BASS 2"

}

trackEchannelB = \relative c {
  r2. ees4 ees4. ees8 ees4 ees
  | % 2
  ees2 ees4 ees d4. ees8 bes4 bes
  | % 3
  ees2. d4 c4. c8 c4 b
  | % 4
  c4 e f c aes4. aes8 aes4 aes
  | % 5
  g2. ees'4 ees4. ees8 ees4 ees
  | % 6
  ees4 ees ees ees aes,4. aes8 g4 c
  | % 7
  f,2. f8 f bes4. bes8 bes4 bes
  | % 8
  ees4 ees g, aes8 aes bes4. bes8 bes4 bes
  | % 9
  ees,2. r4 ees' ees4. ees8 ees4
  | % 10
  ees4 ees2 ees4 ees d4. ees8 bes4
  | % 11
  bes4 ees2. d4 c4. c8 c4
  | % 12
  b4 c e f c aes4. aes8 aes4
  | % 13
  aes4 g2. ees'4 ees4. ees8 ees4
  | % 14
  ees4 ees ees ees ees aes,4. aes8 g4
  | % 15
  c4 f,2. f8 f bes4. bes8 bes4
  | % 16
  bes4 ees ees g, aes8 aes bes4. bes8 bes4
  | % 17
  bes4 ees,2. r4 ees' ees4. ees8
  | % 18
  ees4 ees ees2 ees4 ees d4. ees8
  | % 19
  bes4 bes ees2. d4 c4. c8
  | % 20
  c4 b c e f c aes4. aes8
  | % 21
  aes4 aes g2. ees'4 ees4. ees8
  | % 22
  ees4 ees ees ees ees ees aes,4. aes8
  | % 23
  g4 c f,2. f8 f bes4. bes8
  | % 24
  bes4 bes ees ees g, aes8 aes bes4. bes8
  | % 25
  bes4 bes ees,2.
}

trackE = <<

  \clef bass

  \context Voice = voiceA \trackEchannelA
  \context Voice = voiceB \trackEchannelB
>>


\score {
  <<
    \context Staff=trackB \trackA
    \context Staff=trackB \trackB
    \context Lyrics=trackC \trackC
    \context Staff=trackD \trackA
    \context Staff=trackD \trackD
    \context Staff=trackE \trackA
    \context Staff=trackE \trackE
  >>
  \layout {}
  \midi {}
}
