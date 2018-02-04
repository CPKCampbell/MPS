\version "2.21.0"
\language "english"

\header {
  title = "Wonderful Words Of Life"
  subtitle = \markup { \teeny \italic \center-column  {"That ye may be blameless and harmless,
 the sons of God," "without rebuke, in the midst of a crooked and perverse nation,"
 "among whom ye shine as lights in the world; holding forth the Word of life. Php. 2:15-16 "  }}
  composer = "Philip P. Bliss"
  poet = "P.P. Bliss"
  tagline = "Engraved by CPKC.Music"
}

\paper {
  #(set-paper-size "letter")
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key f \major
  \time 6/8
}

tenor = \relative c' {
  \global
 c4 c8 c d c c4 bf8 bf4. bf8 bf bf c4 bf8 a2. |
 c4 c8 c d c c4 bf8 bf4. bf8 bf bf c4 bf8 a2. |
  f'4 f8 f ( g ) a bf4. a  f4 f8 f ( g ) a bf4. a |
  \bar "||"
  % refrain
  a8^\markup { \tiny \italic "Refrain" } g g g4. g8 f f f4. f8 c c c4 c8 c4. (f4.) |
  a8 g g g4. g8 f f f4. f8 c c c4 c8 c2. |

}

lead = \relative c' {
  \global
 a4 a8a bf a a4 g8 g4. c,8 g' g a4 g8 f4. ( c ) |
  a'4 a8a bf a a4 g8 g4. c,8 g' g a4 g8 f2. |
 a4 a8 a ( bf ) c d4. c  a4 a8 a ( bf ) c d4. c |
 % refrain
 c8 bf bf bf4. bf8 a a a4. a8 g f g4 e8 f4 ( a8 c4. )
 c8 bf bf bf4. bf8 a a a4. a8 g f g4 e8 f2.
}

baritone = \relative c {
  \global
  f4 f8 f f f f4 e8 e4. e8 e e e4 e8 f2. |
  f4 f8 f f f f4 e8 e4. e8 e e e4 e8 f2. |
  f4 f8 f4 f8 f4. f f4 f8 f~ f f f4. f |
  \bar "||"
  % refrain
  c'8 c c c4. c8 c c c4. c8 bf a bf4 g8 a2. |
  c8 c c c4. c8 c c c4. c8 bf a bf4 g8 a2. |

}

bass = \relative c {
  \global
 f4 f8 f f f c4 c8 c4. c8 c c c4 c8 f2. |
  f4 f8 f f f c4 c8 c4. c8 c c c4 c8 f,2. |
  f'4 f8 f4 f8 f4. f f4 f8 f~ f f f4. f |
  %refrain
  c8 c c c4. f8 f f f4. c8 c c c4 c8 f2. |
  c8 c c c4. f8 f f f4. c8 c c c4 c8 f2.
}

verseOne = \lyricmode {
  \set stanza = "1."
Sing them o -- ver a -- gain to me,
Won -- der -- ful words of life,
Let me more of their beau -- ty see,
Won -- der -- ful words of life;
Words of life and beau -- ty,
Teach me faith and du -- ty.
% refrain
Beau -- ti -- ful words, won -- der -- ful words
Won -- der -- ful words of life;
Beau -- ti -- ful words, won -- der -- ful words
Won -- der -- ful words of life.
}

verseTwo = \lyricmode {
  \set stanza = "2."
 Christ, the bless -- ed One, gives to all
Won -- der -- ful words of life,
Sin -- ner, list to the lov -- ing call,
Won -- der -- ful words of life;
All so free -- ly giv -- en,
Woo -- ing us to heav -- en.
}

verseThree = \lyricmode {
  \set stanza = "3."
  Sweet -- ly e -- cho the Gos -- pel call,
  Won -- der -- ful words of life,
  Of -- fer par -- don and peace to all,
  Won -- der -- ful words of life;
  Je -- sus, on -- ly Sa -- viour,
  Sanc -- ti --
 \set ignoreMelismata = ##t  fy  us
 \unset ignoreMelismata
  for -- ev -- er,

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
 %     shortInstrumentName = \markup \center-column { "Ten" "Lead" }
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
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Baritone" "Bass" }
 %     shortInstrumentName = \markup \center-column { "Bar" "Bass" }
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

