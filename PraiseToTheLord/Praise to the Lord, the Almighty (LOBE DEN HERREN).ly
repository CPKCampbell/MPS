\version "2.21.0"
\language "english"

\header {
  poet = \markup{ \fontsize #4 \smallCaps "Praise to the Lord, the Almighty"  }
  meter = \markup { \small { Music: LOBE DEN HERREN, 14.14.4.7.8.; Anon., 1665; harm. W. S. Bennett, 1864} }
  piece = \markup { \small {Text: Joachim Neander, 1680; trans. Catherine Winkworth, 1863 }}
  %breakbefore
  %copyright = ""
  tagline = ""
}

\paper {
  #(set-paper-size "letter")
  ragged-bottom = ##f
  system-count = #4
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
 \key g \major
  \time 3/4
  %\autoBeamOff
  \set Staff.midiInstrument = "church organ"
}

tenor = \relative c' {
  \global
  b4 b a |
  d4. d8 b4 |
  b g g |
  g a g |
  g( fs2) |
  g2. |

  b4 b a |
  d4. d8 b4 |
  b g g |
  g a g |
  g( fs2) |
  g2. |

  b4 a b |
  c2. |

  d4 c a |
  b c d |
  d2. |

  d4 g, a |
  g e fs |
  e( a8[ g] fs4) |
  g2. \bar "|."

}

lead = \relative c' {
  \global
  g4 g d' |
  b4. a8 g4 |
  fs e d |
  e fs g |
  a2. |
  g2. \bar "||" \break

  g4 g d' |
  b4. a8 g4 |
  fs e d |
  e fs g |
  a2. |
  g2. \bar "||" \break

  d'4 d d |
  e2. \bar "||"

  b4 c d |
  d c b |
  a2. \bar "||"

  d,4 e fs |
  g a b |
  a2. |
  g2. \bar "|."

}

baritone = \relative c {
  \global
  d4 e d |
  d4. fs8 e4 |
  d c b |
  c c b |
  e( d c)
  b2. |

  d4 e d |
  d4. fs8 e4 |
  d c b |
  c c b |
  e( d c)
  b2. |

  g'4 a g |
  g2. |

  g4 g a |
  g e8[ fs] g4 |
  fs2. |

  d4 c c |
  b e ds |
  e2( d!4) |
  b2. \bar "||"

}

bass = \relative c {
  \global
 g'4 e fs |
  g4. d8 e4 |
  b c g' |
  d a e' |
  c( d2) |
  g,2. |

  g'4 e fs |
  g4. d8 e4 |
  b c g' |
  d a e' |
  c( d2) |
  g,2. |

  g'4 fs g |
  c,2. |

  g'4 e fs |
  g a b8[ g] |
  d2. |

  b4 c a |
  e' c b |
  c2( d4) |
  g,2. \bar "|."

}

verseOne = \lyricmode {
  \set stanza = "1."
  \set stanza = "1."
  Praise to the Lord! the Al -- migh -- ty, the King of cre -- a -- tion!
  O my soul, praise Him, for He is thy health and sal -- va -- tion!
  All ye who hear,
  Now to His tem -- ple draw near,
  Join me in glad ad -- o -- ra -- tion!
}

verseTwo = \lyricmode {
  \set stanza = "2."
   \set stanza = "2."
  Praise to the Lord! who o'er all things so won -- drous -- ly reign -- eth,
  Shel -- ters thee un -- der His wings, yea so gent -- ly sus -- tain -- eth;
  Hast thou not seen
  How thy de -- sires e'er have been
  Grant -- ed in what He or -- dain -- eth?

}

verseThree = \lyricmode {
  \set stanza = "3."
   Praise to the Lord! who doth pros -- per thy work and de -- fend thee,
  Sure -- ly His good -- ness and mer -- cy here dai -- ly at -- tend thee;
  Pon -- der a -- new
  What the Al -- migh -- ty can do,
  If with His love He be -- friend thee!

}

verseFour = \lyricmode {
  \set stanza = "4."
  Praise to the Lord! Oh let all that is in me a -- dore Him!
  All that hath life and breath, come now with prais -- es be -- fore Him!
  Let the A -- men
  Sound from His peo -- ple a -- gain,
  Glad -- ly for aye we a -- dore Him!
}
rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "tenor1" \new Voice = "tenor1" { \tenor }
     \new Staff = "tenor2" \new Voice = "tenor2" { \lead }
     \new Staff = "bass1" \new Voice = "bass1" { \baritone }
     \new Staff = "bass2" \new Voice = "bass2" { \bass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.6
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Tenor" "Lead" }
%      shortInstrumentName = \markup \center-column { "Ten" "Lead" }
    } <<
      \clef "treble_8"
      \new Voice = "tenor1" { \voiceOne \tenor }
      \new Voice = "tenor2" { \voiceTwo \lead }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor1" \verseOne
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor1" \verseTwo
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor1" \verseThree
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor1" \verseFour
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Baritone" "Bass" }
  %    shortInstrumentName = \markup \center-column { "Bar" "Bass" }
    } <<
      \clef bass
      \new Voice = "bass1" { \voiceOne \baritone }
      \new Voice = "bass2" { \voiceTwo \bass }
    >>
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "tenor1"
  \score {
    \rehearsalMidi "tenor1" "tenor sax" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor2"
  \score {
    \rehearsalMidi "tenor2" "tenor sax" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass1"
  \score {
    \rehearsalMidi "bass1" "tenor sax" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass2"
  \score {
    \rehearsalMidi "bass2" "tenor sax" \verseOne
    \midi { }
  }
}

