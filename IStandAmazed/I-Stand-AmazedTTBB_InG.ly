\version "2.21.0"
\language "english"

\header {
  title = "I Stand Amazed"
  composer = "Charles Hutchinson Gabriel (1905)"
  poet = "C. H. Gabriel"
  tagline = ""
}

\paper {
  #(set-paper-size "letter")
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  system-count = #4
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
   \context {
      \Lyrics
      \override VerticalAxisGroup.staff-affinity = #CENTER
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #3
    }
}

global = {
  \key g \major
  \time 4/4
  \partial 4
}

tenor = \relative c' {
  \global
  \repeat volta 5 {
   a4 b b b b8. c16 d2 b4 d d d8. d16 d4 d d2.
   b4 c c e d8. c16 b2 d4 e d d8. d16 c4 c b1 |
   \bar "||"
   % refrain
   d4 d d8. c16 b4 g g d'8. d16 d4 d d d4. d8 d4 d d2 |
   d4 d d8. c16 b4 g g d'8. d16 d4 e d d4. d8 d4 c b
}
   \bar "|."
}

lead = \relative c {
  \global
  \repeat volta 5 {
  d4 d b d g8. a16 b2 g4 g |
  fs4 fs8. 16 g4 a g2. d4 e e g fs8. e16 d2 g4 a |
  b4 b8. b16 a4 a g2. s4 |
  % refrain
  b2 b8. a16 g4 d'2 d8. c16 b4 a a a4. b8 c4 b a2 |
  b2 b8. a16 g4 d'2 d8. c16 b4 a b8 c b4. a8 g4 fs g
  }
}

baritone = \relative c {
  \global
  \repeat volta 5 {
 fs4 g d g g8. g16 g2 g4 g a a8. a16 b4 c b2.
 g4 g g g g8. g16 g2 g4 g g g8. g16 fs4 fs g1
 \bar "||"
 % refrain
 g4 g g8. g16 g4 b b b8. a16 g4 fs fs fs4. g8 a4 g fs2 |
 g4 g g8. g16 g4 b4 b b8. a16 g4 g g g4. c8 b4 a g
  }

 \bar "|."
}

bass = \relative c {
  \global
  \repeat volta 5 {
  g4 g g g g8. g16 g2 g4 b |
  d4 d8. d16 d4 d g,2. g4 |
  c4 c c c8. c16 g2 b4 c d d8. d16 d4 d g,2. s4 |
  %refrain
  g4 g g8. g16 g4 d' d g8. g16 g4 d d d4. d8 d4 d d2
  g,4 g g8. g16 g4 d' d g8. g16 g4 c,4 c d4. d8 d4 d g,
  }
}

verseOne = \lyricmode {
  \set stanza = "1."
  I stand a -- mazed in the pres -- ence
of Je -- sus the Naz -- ar -- ene,
and won -- der how he could love me,
a sin -- ner, con -- demned, un -- clean.

}

verseTwo = \lyricmode {
  \set stanza = "2."
  For me it was in the gar -- den
he prayed:  “Not my will, but thine.”
He had no tears for his own griefs,
but sweat drops of blood for mine.

}

verseThree = \lyricmode {
  \set stanza = "3."
 In pi -- ty an -- gels be -- held him,
and came from the world of light
to com -- fort him in the sor -- rows
he bore for my soul that night.
}

verseFour = \lyricmode {
  \set stanza = "4."
 He took my sins and my sor -- rows,
he made them his ver -- y own;
he bore the bur -- den to Cal -- v'ry,
and suf -- fered and died a -- lone.
}

verseFive = \lyricmode {
  \set stanza = "5."
 When with the ran -- somed in glo -- ry
his face I at last shall see,
'twill be my joy through the a -- ges
to sing of his love for me.
}

refrain = \lyricmode {
  (Oh) How mar -- vel -- lous, (oh) how won -- der -- ful.
  And my song shall ev -- er be:
   (Oh) How mar -- vel -- lous, (oh) how won -- der -- ful.
   Is my Sa -- viour's love for me.
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
       \set Score.tempoWholesPerMinute = #(ly:make-moment 108 4)
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
 %     shortInstrumentName = \markup \center-column { "Ten" "Lead" }
    } <<
      \clef "treble_8"
      \new Voice = "tenor1" { \voiceOne \tenor }
      \new Voice = "tenor2" { \voiceTwo \lead }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor1" { \verseOne \refrain }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor1" \verseTwo
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor1" \verseThree
     \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor1" \verseFour
     \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor1" \verseFive
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Baritone" "Bass" }
   %   shortInstrumentName = \markup \center-column { "Bar" "Bass" }
    } <<
      \clef bass
      \new Voice = "bass1" { \voiceOne \baritone }
      \new Voice = "bass2" { \voiceTwo \bass }
    >>
  >>
  \layout { }
  \midi {
    \tempo 4=108
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

