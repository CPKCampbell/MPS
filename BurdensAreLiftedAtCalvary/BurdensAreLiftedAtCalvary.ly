\version "2.21.0"
\language "english"
\pointAndClickOff
\header {
  title = "Burdens Are Lifted At Calvary"
  composer = "John M. Moore"
  poet = "John M. Moore"
  tagline = ""
}

\paper {
  #(set-paper-size "letter")
}
#(set-global-staff-size 16)
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
  \key f \major
  \time 6/8
  \tempo "Lento"
}

lead = \relative c' {
  \global
  \clef "treble_8"
 \global
  a4 f8 c4 a'8 a bf a g4. g4 c,8 g'8 a g f4.~ f bf8 bf bf d8. c16 bf8 |
  a4 f8 c4. g'8 a bf a4 g8 f4.~ f bf8 bf bf d8. c16 bf8 a4 f8 c4. g'4 c8 c4. |
  a4 c8 c4. bf8 bf bf d8. c16 bf8 a4 f8 c4. g'8 a bf a4 g8 f4.~ f

}


tenor = \relative c' {
  \global
  \clef "treble_8"
  c4 a8 a4 c8 c d c bf4. bf4 8 bf c bf a4.~ a f8 f f bf8. bf16 f8 |
  f4 a8 a4. bf8 c d c4 g8 g4. ( a ) \bar "||"
  % refrain
  \tempo "Faster"
  f8 f f bf8. 16 f8 f4 a8 a4. bf4 bf8 bf4. |
  c4 a8 a4. f8 f f bf8. a16 bf8 c4 a8 a4. bf8 c d c4 bf8 a4 ( bf8 a4. )
  \bar "|."
}


baritone = \relative c {
  \global
 f4 c8 c4 f8 f f f e4. e4 c8 e e e c4.~ c d8 d d f8. e16 d8 |
 c4 8 4. e8 e e e4 e8 c4. ( ef ) \bar "||"
 d8 d d f8. e16 d8 c4 c8 c4. e4 e8 e ( f g ) |
 f4 f8 f ( e ef ) d8 d d f8. f16 f8 f4 c8 c4. e8 e e e4 e8 c4 ( d8 c4. )
 \bar "|."

}

bass = \relative c {
  \global
 f4 f8 f4 f8 f f f c4. c4 c8 c c c f4.~ f bf,8 bf bf bf8. bf16 bf8 |
 f'4 f8 f4. c8 c c c4 c8 f4.~ f bf,8 bf bf bf8. bf16 bf8 f'4 f8 f4. c4 c8 c ( d e ) |
 f4 f8 f4. bf,8 bf bf bf8. c16 d8 f4 f8 f4. c8 c c c4 c8 <f f,>4.~ q
}
verseOne = \lyricmode {
  \set stanza = "1."
  Days are filled with sor -- row and care,
Hearts are lone -- ly and drear;
Bur -- dens are lift -- ed at Cal -- va -- ry,
Je -- sus is ve -- ry near.

}

verseTwo = \lyricmode {
  \set stanza = "2."
 Cast your care on Je -- sus to -- day,
Leave your wor -- ry and fear;
Bur -- dens are lift -- ed at Cal -- va -- ry,
Je -- sus is ve -- ry near.

}

verseThree = \lyricmode {
  \set stanza = "3."
Trou -- bled soul, the Sa -- viour can see
Ev -- ry heart -- ache and tear;
Bur -- dens are lift -- ed at Cal -- va -- ry,
Je -- sus is ve -- ry near.
}

refrain = \lyricmode {
  Bur -- dens are lift -- ed at Cal -- va -- ry,
Cal -- va -- ry, Cal -- va -- ry;
Bur -- dens are lift -- ed at Cal -- va -- ry,
Je -- sus is ve -- ry near.

}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "lead" \new Voice = "lead" { \lead }
     \new Staff = "baritone" \new Voice = "baritone" { \baritone }
     \new Staff = "tenor" \new Voice = "tenor" { \tenor }
     \new Staff = "bass" \new Voice = "bass" { \bass }
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

%{
right = \relative c'' {
  \global
  % Music follows here.

}

left = \relative c' {
  \global
  % Music follows here.

}

%}

choirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Tenor"
  } \new Voice = "tenor" \tenor
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "tenor" \verseOne
   \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "tenor" {  \verseTwo \refrain }
   \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "tenor" \verseThree

  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Lead"
  } \new Voice = "lead" \lead

  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Baritone"
  } {
    \clef "bass"
    \new Voice = "baritone" \baritone
  }
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "baritone" \verseOne
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "baritone" { \verseTwo \refrain }
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "baritone" \verseThree
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Bass"
  } {
    \clef bass
    \new Voice = "bass" \bass
  }
>>
%{
pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \left }
>>
%}
\score {
  <<
    \choirPart
 %   \pianoPart
  >>
  \layout { }
%{  \midi {
    \tempo 4=100
  }
%}
}

%{ {Rehearsal MIDI files:
\book {
  \bookOutputSuffix "lead"
  \score {
    \rehearsalMidi "lead" "lead sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "baritone"
  \score {
    \rehearsalMidi "baritone" "lead sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "tenor sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "tenor sax" \verse
    \midi { }
  }
}
%}
