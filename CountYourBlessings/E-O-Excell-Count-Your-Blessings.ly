\version "2.21.0"
\language "english"
\pointAndClickOff
\header {
  copyright = "Copyright © 1956 by Alfred B. Smith in \"Sing Men No. 4\""

  title = "Count Your Blessings"
  composer = "E.O. Excell"
  poet = "Reverend Johnson Oatman, Jr."
  copyright = "Copyright © 1956, Alfred B. Smith"
  tagline = ""
}
#(set-global-staff-size 18)
\paper {
  #(set-paper-size "letter")
%  system-count = #8
  ragged-last-bottom = ##f
%  annotate-spacing = ##t
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
  \context {
    \Score
    \override StaffGrouper.staff-staff-spacing.padding = #20
  }
}

global = {
  \key f \major
  \time 2/4

}

tenor =  \relative c' {
  \global
  % Music follows here.
  a 8   a a bf   |
  c 8  c c a   |
  bf 4 a  |
  bf 2  |
  %% 5
  g 8  a bf c   |
  e 8  d c bf   |
  a 4 bf  |
  c 2  |
  a 8  a a bf   |
  %% 10
  c 8  c c a   |
  bf 4 a  |
  bf 2  |
  g 8  a bf c   |
  e 8  d c bf   |
  %% 15
  c 4 bf  |
  a 2  |
  %chorus
  \break
  c 4. c 8  |
  f 8  c c a   |
  bf 4 bf  |
  %% 20
  bf 2  |
  bf 4. c 8  |
  e 8  d c bf   |
  a 4 bf  |
  c 2  |
  %% 25
  f 4. f 8  |
  e 16 d 8. r4  |
  e 8  e d d   |
  c 2  |
  f 8  f e f   |
  %% 30
  e 8  d c bf   |
  a 4 g  |
  f 2  |

  \bar "|."
} % Voice


lead =  \relative c {
  \global
  % Music follows here.
  f 8   f f g   |
  a 8  a a f   |
  g 4 fs  |
  g 2  |
  %% 5
  e 8  f g a   |
  bf 8  bf a g   |
  f 4 g  |
  a 2  |
  f 8  f f g   |
  %% 10
  a 8  a a f   |
  g 4 fs  |
  g 2  |
  e 8  f g a   |
  bf 8  bf a g   |
  %% 15
  a 4 g  |
  f 2  |
  a 4. a 8  |
  a 8  a a f   |
  g 8  f e f    |
  %% 20
  g 2  |
  g 4. a 8  |
  bf 8  bf a g   |
  f 4 g  |
  a 2  |
  %% 25
  a 4. c 8  |
  c 16 bf 8. r4  |
  bf 8  bf bf bf   |
  bf 8 ( g) a bf    |
  a 8  a bf c   |
  %% 30
  c 8  bf d df   |
  c 4 bf  |
  a 2  |

  \bar "|."
} % Voice


baritone = \relative c {
  \global
  % Music follows here.
  c 8  c c c   |
  f 8  f f c   |
  e 4 ef  |
  e 2  |
  %% 5
  c 8  c e e   |
  g 8  f e e   |
  c 4 e  |
  f 2  |
  c 8  c c c   |
  %% 10
  f 8  f f c   |
  e 4 ef  |
  e 2  |
  c 8  c e e   |
  g 8  f e d   |
  %% 15
  e 4 e  |
  c 2  |
  f 8  f f f   |
  c 4 f  |
  e 8  d c d   |
  %% 20
  e 2  |
  e 8  e e e   |
  g 4 e  |
  c 8  c e e   |
  f 2  |
  %% 25
  c 8  c c f   |
  f 16 f 8. r4  |
  g 8  g f f   |
  e 2  |
  f 8  c c f   |
  %% 30
  f 8  f f f   |
  f 4 e  |
  c 2  |

  \bar "|."

} % Voice


bass =  \relative c, {
  \global
  % Music follows here.
  f 8   f f f   |
  f 8  f f f   |
  c' 4 c  |
  c 2  |
  %% 5
  c 8  c c c   |
  c 8  c c c   |
  f, 4 c'  |
  f, 2  |
  f 8  f f f   |
  %% 10
  f 8  f f f   |
  c' 4 c  |
  c 2  |
  c 8  c c c   |
  c 8  c c g   |
  %% 15
  c 4 c  |
  f, 2  |
  f 8  f f f   |
  f 4 f  |
  c' 8  c c c   |
  %% 20
  c 2  |
  c 8  c c c   |
  c 4 c  |
  f, 8  f c' c   |
  f, 2  |
  %% 25
  f 8  f f a   |
  bf 16 bf 8. r4  |
  c 8  c c c   |
  c 8 ( bf ) a g    |
  f 8  f g a   |
  %% 30
  bf 8  bf g g   |
  c 4 c  |
  f, 2  |

  \bar "|."
} % Voice


verseOne = \lyricmode {

  When up -- on life’s bil -- lows you are tem -- pest -- tossed,
  When you are dis -- cour -- aged, think -- ing all is lost,
  Count your man -- y bless -- ings, name them one by one,
  And it will sur -- prise you what the Lord has done.
  %chorus
  Count your bless -- ings, name them one by one,
  Count your bless -- ings, see what God hath done!
  Count your bless -- ings,  name them one by one,
  Count your man -- y bless -- ings, see what God hath done.

}

bChorus = \lyricmode {
  \repeat unfold 44 { \skip 1 }
  Count your man -- y  bless -- ings, name them one by one,
  Count your man -- y bless -- ings, see what God hath done!
  Count your man -- y bless -- ings,  name them one by one, by one
  Count your man -- y bless -- ings, see what God hath done.
}


verseTwo = \lyricmode {

  Are you ev -- er bur -- dened with a load of care?
  Does the cross seem heav -- y you are called to bear?
  Count your man -- y bless -- ings, eve -- ry doubt will fly,
  And you will keep sing -- ing as the days go by.
}

verseThree = \lyricmode {

  When you look at oth -- ers with their lands and gold,
  Think that Christ has prom -- ised you His wealth un -- told;
  Count your man -- y bless -- ings wealth can nev -- er buy
  Your re -- ward in heav -- en, nor your home on high.
}

verseFour = \lyricmode {
  So, a -- mid the con -- flict wheth -- er great or small,
  Do not be dis -- heart -- ened, God is ov -- er all;
  Count your man -- y bless -- ings, an -- gels will at -- tend,
  Help and com -- fort give you to your jour -- ney’s end.
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
      %   shortInstrumentName = \markup \center-column { "Ten" "Lead" }
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

    \new Staff = "basses" \with {
      midiInstrument = "choir aahs" \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor1" \verseFour

      instrumentName = \markup \center-column { "Baritone" "Bass" }
      %    shortInstrumentName = \markup \center-column { "Bar" "Bass" }
    } <<
      \clef bass
      \new Voice = "bass1" { \voiceOne \baritone }
      \new Voice = "bass2" { \voiceTwo \bass }
    >>
     \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "bass2" \bChorus
  >>
  \layout { }
%{
  \midi {
    \tempo 4=100
  }
%}
}

%{ Rehearsal MIDI files:
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
%}

