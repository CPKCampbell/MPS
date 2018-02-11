\version "2.21.0"
\language "english"

\header {
  title = "Redeemed"
  composer = "Wm J. Kirkpatrick"
  poet = "Fanny J. Crosby"
  tagline = ""
}

\paper {
  #(set-paper-size "letter")
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
  \key af \major
  \time 6/8
  \partial 8
  \autoBeamOff
}

tenor = \relative c' {
  \global
c8 c c c c df df c4. c4 ef8 ef ef ef ef ef ef ef4.~ ef4
c8 c c c c df df c4. c4 ef8 ef ef ef ef ef ef c4.~ c4
\bar "||"
%
c8^"Chorus" f4.~ f4 f8 ef4.~ ef4 c8 ef8 ef ef ef ef ef ef4.~ ef4
c8 df4. ( f4 ) df8 c4. ( ef4)\fermata c8 df df df df ef df c4.~ c4
\bar "|."

}

lead = \relative c {
  \global
  ef8 ef ef ef ef f g af4. ef4 af8 bf bf bf bf af bf c4.~ c4
  ef,8 ef ef ef ef f g af4. ef4 af8 bf bf bf bf af bf af4.~ af4
  %
  af8 df4.~ df4 df8 c4.~ c4 af8 bf bf bf bf af bf c4.~ c4
  ef,8 f4. ( df'4) f,8 ef4. ( c'4) af8 bf bf bf bf c bf af4.~ af4
  \bar "|."
}

baritone = \relative c' {
  \global
  af8 af af af af af ef ef4. af4 af8 g g g g f g af4.~ af4
   af8 af af af af af ef ef4. af4 af8 g g g g f g <af ef>4.~ q4
   %
   af8 af4 af8 af4 af8 af4 af8 af4 af8 g g g g f g af4.~ af4
   af8 af4 af8 af4 af8 af4 af8 af4\fermata  af8 g g g g f g ef4.~ ef4

}

bass = \relative c {
  \global
  af8 af af af af af af af4. af4 c8 ef ef ef ef ef ef af,4.~ af4
   af8 af af af af af af af4. af4 c8 ef ef ef ef ef ef af,4.~ af4
  %
  af'8 df,4 df8 df4 df8 af4 af8 af4 af8 ef' ef ef ef ef ef af,4.~ af4
  af8 df4 df8 df4 df8 af4 af8 af4 af8 ef' ef ef ef ef ef af,4.~ af4
  \bar "|."

}

verseOne = \lyricmode {
  \set stanza = "1."
   	Re -- deemed how I love to pro -- claim it!
Re -- deemed by the blood of the Lamb;
Re -- deemed through His in -- fin -- ite mer -- cy,
His child, and for -- ev -- er, I am.
  	Re -- deemed, re -- deemed,
Re -- deemed by the blood of the Lamb;
Re -- deemed, re -- deemed,
  His child, and for -- ev -- er, I am.

}

verseTwo = \lyricmode {
  \set stanza = "2."
  Re -- deemed and so hap -- py in Je -- sus,
No lan -- guage my rap -- ture can tell;
I know that the light of His pres -- ence
With me doth con -- tin -- ual -- ly dwell.

}

verseThree = \lyricmode {
  \set stanza = "3."
  I think of my bless --ed Re -- deem -- er,
I think of Him all the day long;
I sing, for I can -- not be si -- lent;
His love is the theme of my song.

}

verseFour = \lyricmode {
  \set stanza = "4."
I know I shall see in His beau -- ty
The King in whose way I de -- light;
Who lov -- ing -- ly guard  -- eth my foot -- steps,
And giv -- eth me songs in the night.

}
rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "tenor" \new Voice = "tenor" { \tenor }
     \new Staff = "lead" \new Voice = "lead" { \lead }
     \new Staff = "baritone" \new Voice = "baritone" { \baritone }
     \new Staff = "bass" \new Voice = "bass" { \bass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.6
       \set Score.tempoWholesPerMinute = #(ly:make-moment 120 4)
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
         } <<
      \clef "treble_8"
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "lead" { \voiceTwo \lead }
    >>
   \new Lyrics  \lyricsto "tenor" \verseOne
    \new Lyrics  \lyricsto "tenor" { \verseTwo  }
    \new Lyrics  \lyricsto "tenor" \verseThree
    \new Lyrics  \lyricsto "tenor" \verseFour
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Baritone" "Bass" }
        } <<
      \clef bass
      \new Voice = "baritone" { \voiceOne \baritone }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
  >>
  \layout {
  \context {
    \Lyrics
   \override VerticalAxisGroup.staff-affinity = #CENTER
   \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #3
  }
    }
  \midi {
    \tempo 4=120
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "tenor sax" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "lead"
  \score {
    \rehearsalMidi "lead" "tenor sax" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "baritone"
  \score {
    \rehearsalMidi "baritone" "tenor sax" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "tenor sax" \verseOne
    \midi { }
  }
}

