% Lily was here -- automatically converted by /usr/local/bin/midi2ly from /work/colin/music/MPS/YesIKnow/Yes_I_Know.mid
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


  \key aes \major

  % [COPYRIGHT_NOTICE] PUBLIC DOMAIN

  \time 4/4


  \key aes \major

  \tempo 4 = 90
  \skip 2.

  \key aes \major

  \tempo 4 = 90

}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = \lyricmode {
  " "2.
  % [SEQUENCE_TRACK_NAME] SOPRANO ALTO
  "1. Come, "8. "ye "16
  | % 2
  "sin"16*11 "ners, "16 "lost "8. "and "16
  | % 3
  "hope"2 "less, "4 "Je"8. "sus' "16
  | % 4
  "blood "16*11 "can "16 "make "8. "you "16
  | % 5
  "free; "2. "For "8. "He "16
  | % 6
  "saved "16*11 "the "16 "worse "8. "a"16
  | % 7
  "mong "2 "you, "4 "When "8. "He "16
  | % 8
  "saved "16*11 "a "16 "wretch "8. "like "16
  | % 9
  "me. "4
}

trackBchannelB = \relative c {
  \voiceTwo
  r2. ees'8. aes16
  | % 2
  c16*11 <aes c, >16 <des f, >8. <des f, >16
  | % 3
  ees,8. ees16 ees8. ees16 c8. c16 aes'8. c16
  | % 4
  ees16*11 <des f, >16 <c ees, >8. <bes des, >16
  | % 5
  ees,8. aes16 g8. f16 ees4 ees8. aes16
  | % 6
  c16*11 <aes c, >16 <des f, >8. <des f, >16
  | % 7
  ees,8. ees16 ees8. ees16 c8. c16 aes'8. c16
  | % 8
  ees16*11 <des f, >16 <c ees, >8. <bes des, >16
  | % 9
  c,8. c16 des8. des16 c4 <c' aes >8 <ees c >
  | % 10
  <ees c >8 bes g8. g16 g4 <des' f, >8. <des f, >16
  | % 11
  <des f, >8 ees, ees8. ees16 f8 ees <c' ees, >8. <c ees, >16
  | % 12
  <c ees, >8. <bes des, >16 <bes des, >8. <c ees, >16 <des f, >8.
  <des f, >16 <c ees, >8. <bes des, >16
  | % 13
  ees,8. aes16 g8. f16 ees4 <c' aes >8 <ees c >
  | % 14
  <ees c >8 bes g8. g16 g4 <des' f, >8. <des f, >16
  | % 15
  <des f, >8 ees, ees8. ees16 f8 ees <c' ees, >8. <c ees, >16
  | % 16
  <c ees, >8. <bes des, >16 <bes des, >8. <c ees, >16 <des f, >8.
  <des f, >16 <c ees, >8. <bes des, >16
  | % 17
  c,8. c16 des8. des16 c4
}

trackBchannelBvoiceB = \relative c {
  \voiceOne
  r4*5 ees'8. ees16 ees8. r16*5
  | % 3
  c'2 aes4 r2 g8. g16 g8. r16*5
  | % 5
  c2. r2 ees,8. ees16 ees8. r16*5
  | % 7
  c'2 aes4 r2 g8. g16 g8. r16*5
  | % 9
  aes2. r4. des8*5 r4. c8*5 r4*5 c2. r4. des8*5 r4. c8*5 r4*5 aes2.
}

trackB = <<
  \context Lyrics = voiceA \trackBchannelA
  \context Voice = voiceB \trackBchannelB
  \context Voice = voiceC \trackBchannelBvoiceB
>>


trackCchannelA = {
  \skip 2.
  \set Staff.instrumentName = "TENOR BASS"

}

trackCchannelB = \relative c {
  r4*5 <aes' aes, >8. <aes aes, >16 <aes aes, >8. <aes aes, >16
  <aes aes, >8. <aes aes, >16
  | % 3
  <aes aes, >8. <aes aes, >16 <aes aes, >8. <aes aes, >16 <ees aes, >8.
  <ees aes, >16 r2 <bes' ees, >8. <bes ees, >16 <bes ees, >8. <bes ees, >16
  <aes ees >8. <g ees >16
  | % 5
  <aes aes, >8. <aes aes, >16 <aes aes, >8. <aes aes, >16 <aes aes, >8.
  r16*9 <aes aes, >8. <aes aes, >16 <aes aes, >8. <aes aes, >16
  <aes aes, >8. <aes aes, >16
  | % 7
  <aes aes, >8. <aes aes, >16 <aes aes, >8. <aes aes, >16 <ees aes, >8.
  <ees aes, >16 r2 <bes' ees, >8. <bes ees, >16 <bes ees, >8. <bes ees, >16
  <aes ees >8. <g ees >16
  | % 9
  <ees aes, >8. <ees aes, >16 <f bes, >8. <f bes, >16 <ees aes, >4
  r2 <ees' ees, >8. <ees ees, >16 <bes ees, >4 r2 <aes aes, >8.
  <aes aes, >16 <aes aes, >4 <aes ees >8. <aes ees >16
  | % 12
  <aes ees >8. <g ees >16 <g ees >8. <aes ees >16 <bes ees, >8.
  <bes ees, >16 <aes ees >8. <g ees >16
  | % 13
  <aes aes, >8. <aes aes, >16 <aes aes, >8. <aes aes, >16 <aes aes, >4
  r2 <ees' ees, >8. <ees ees, >16 <bes ees, >4 r2 <aes aes, >8.
  <aes aes, >16 <aes aes, >4 <aes ees >8. <aes ees >16
  | % 16
  <aes ees >8. <g ees >16 <g ees >8. <aes ees >16 <bes ees, >8.
  <bes ees, >16 <aes ees >8. <g ees >16
  | % 17
  <ees aes, >8. <ees aes, >16 <f aes, >8. <f aes, >16 <ees aes, >4
}

trackC = <<

  \clef bass

  \context Voice = voiceA \trackCchannelA
  \context Voice = voiceB \trackCchannelB
>>


\score {
  <<
    \context Lyrics=trackB \trackB
    \context Staff=trackC \trackA
    \context Staff=trackC \trackC
  >>
  \layout {}
  \midi {}
}
