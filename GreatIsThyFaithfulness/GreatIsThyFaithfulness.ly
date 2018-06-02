\version "2.21.0"
\language "english"
\pointAndClickOff
\header {
  title = "Great Is Thy Faithfulness"
 copyright =  "©1923, renewed 1951 Hope Publishing Co."
    title =  "Great Is Thy Faithfulness"
    encodingdate =  "2018-05-11"
    source =  "http://musescore.com/score/100727"
    composer =  "William M. Runyan"
    instrument = "TTBB"
    encodingsoftware =  "MuseScore 2.0.2"
    poet =  "Thomas O. Chrisholm"
    tagline = ""
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
  \context {
    \Lyrics
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  }
}

global = {
  \key ef \major
  \time 3/4
}

lead = \relative c' {
  \global
  \clef "treble_8"
g4 g g g4. f8 f4 af af af af g2 c4 d c bf4. af8 g4 |
f4 g af bf2. bf4 c d ef4. d8 c4 bf af g g  f2 |
c'4 d ef ef4. bf8 bf4 g g f ef2. \bar "||" bf'4^"Chorus" bf f af8. g16 g2 |
c4 c g bf8. af16 af2 bf4 c d ef bf c d ef c bf2. bf4 c d |
ef4. d8 c4 bf af g  g f2 c'4 d ef ef4. bf8 bf4\fermata g4 af d, ef2.
\bar "|."

}


tenor = \relative c' {
  \global
   \clef "treble_8"
 bf4 bf b c4. c8 c4 bf c d c bf2 af4 bf af  bf4. bf8 bf4 |
 a4 bf c bf2. d4 d bf bf4. c8 d4 ef c bf c c2 |
 ef4 d c bf4. ef8 ef4 bf bf af g2. \bar "||" f4 f bf c8. bf16 bf2 |
 bf4 g c df8. c16 c2 d4 d bf bf bf bf bf bf a bf2. d4 d bf |
 bf4. c8 d4 ef c bf c c2 ef4 d c bf4. ef8 ef4\fermata bf f af g2.
 \bar "|."

}


baritone = \relative c {
  \global
 ef4 ef ef ef4. 8 4 d4 ef f ef ef2 ef4 ef ef ef4. d8 ef4 |
 f4 e ef d2. af'4 af af g4. bf8 af4 g f ef ef ef2 |
 fs4 fs fs g4. g8 g4 ef d bf bf2. \bar "||" d4 d d ef8. ef16 ef2 |
 e4 e e f8. f16 f2 af4 af af g g gf f g ef d2. af'4 af af  |
 g4. bf8 af4 g f ef ef ef2 fs4 fs fs g4. g8 g4\fermata ef4 d bf bf2.
 \bar "|."

}

bass = \relative c {
  \global
 ef 4 ef ef  af,4. af8 af4 bf bf bf ef ef2 <af c,>4 <af bf,> <af ef> g4. f8 ef4 |
 c4 c f bf,2. bf'4 bf bf ef,4. ef8 ef4 ef f g af af2 |
 a4 a a bf4. bf8 bf4 bf bf, bf  ef2. \bar "||" bf4 bf bf ef8. ef16 ef4.( df8 ) |
 c4 c c f8. f16 f4.( d8 ) bf4bf bf ef ef ef f f f bf,2. bf'4 bf bf |
 ef,4. ef8 ef4 ef f g af af2 a4 a a bf4. bf8 bf4\fermata bf,4 bf bf ef2.
 \bar "|."

}

verseOne = \lyricmode {
 \set stanza = "1." Great is Thy faith -- ful -- ness, O God my Fa -- ther;
there is no shad -- ow of turn -- ing with Thee;
Thou chang -- est not, Thy com -- pas -- sions, they fail not;
as Thou hast been Thou for -- ev -- er wilt be

}

verseTwo = \lyricmode {
 \set stanza = "2."   Sum -- mer and win -- ter, and spring -- time and har -- vest;
sun, moon, and stars in their cour -- ses a -- bove
join with all na -- ture in man -- i -- fold wit -- ness,
to Thy great faith -- ful -- ness, mer -- cy, and love.
%refrain
Great is Thy faith -- ful -- ness!
Great is Thy faith -- ful -- ness!
Morn -- ing by morn -- ing new mer -- cies I see;
all I have need -- ed Thy hand hath pro -- vid -- ed:
great is Thy faith -- ful -- ness, Lord, un -- to me!
}

verseThree = \lyricmode {
 \set stanza = "3."   Par -- don for sin and a peace that en -- dur -- eth,
Thine own dear pres -- ence to cheer and to guide;
strength for to -- day and bright hope for to -- mor -- row:
bless -- ings all mine, with ten thou -- sand be -- side!

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
    instrumentName = "Lead"
  } \new Voice = "lead" \lead
 \new Lyrics  \lyricsto "lead"  \verseOne
    \new Lyrics  \lyricsto "lead"   \verseTwo
     \new Lyrics  \lyricsto "lead"   \verseThree
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Tenor"
  } \new Voice = "tenor" \tenor

  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Baritone"
  } {
    \clef "bass"
    \new Voice = "baritone" \baritone
  }
  \new Lyrics  \lyricsto "baritone"  \verseOne
    \new Lyrics  \lyricsto "baritone"   \verseTwo
     \new Lyrics  \lyricsto "baritone"   \verseThree
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
  \midi {
    \tempo 4=100
  }
}

% Rehearsal MIDI files:
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

