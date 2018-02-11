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
  \key ef \major
  \time 4/4
  \partial 4
}

tenor = \relative c' {
  \global
  \repeat volta 5 {
   f,4 g g g g8. af16 bf2 g4 bf bf bf8. bf16 bf4 bf bf2.
   g4 af af c bf8. af16 g2 bf4 c bf bf8. bf16 af4 af g1 |
   \bar "||"
   % refrain
   bf4 bf bf8. af16 g4 ef ef bf'8. bf16 bf4 bf bf bf4. bf8 bf4 bf bf2 |
   bf4 bf bf8. af16 g4 ef ef bf'8. bf16 bf4 c bf bf4. bf8 bf4 af g
}
   \bar "|."
}

lead = \relative c {
  \global
  \repeat volta 5 {
  bf4 bf g bf ef8. f16 g2 ef4 ef |
  d4 d8. 16 ef4 f ef2. bf4 c c ef d8. c16 bf2 ef4 f |
  g4 g8. g16 f4 f ef2. s4 |
  % refrain
  g2 g8. f16 ef4 bf'2 bf8. af16 g4 f f f4. g8 af4 g f2 |
  g2 g8. f16 ef4 bf'2 bf8. af16 g4 f g8 af g4. f8 ef4 d ef
  }
}

baritone = \relative c {
  \global
  \repeat volta 5 {
 d4 ef bf ef ef8. ef16 ef2 ef4 ef f f8. f16 g4 af g2.
 ef4 ef ef ef ef8. ef16 ef2 ef4 ef ef ef8. ef16 d4 d ef1
 \bar "||"
 % refrain
 ef4 ef ef8. ef16 ef4 g g g8. f16 ef4 d d d4. ef8 f4 ef d2 |
 ef4 ef ef8. ef16 ef4 g4 g g8. f16 ef4 ef ef ef4. af8 g4 f ef
  }

 \bar "|."
}

bass = \relative c, {
  \global
  \repeat volta 5 {
  ef4 ef ef ef ef8. ef16 ef2 ef4 g |
  bf4 bf8. bf16 bf4 bf ef,2. ef4 |
  af4 af af af8. af16 ef2 g4 af bf bf8. bf16 bf4 bf ef,2. s4 |
  %refrain
  ef4 ef ef8. ef16 ef4 bf' bf ef8. ef16 ef4 bf bf bf4. bf8 bf4 bf bf2
  ef,4 ef ef8. ef16 ef4 bf' bf ef8. ef16 ef4 af,4 af bf4. bf8 bf4 bf ef,
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

