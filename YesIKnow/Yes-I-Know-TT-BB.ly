\version "2.21.0"
\language "english"

\header {
  title = "Yes, I Know"
  composer = "Anna Waterman"
  poet = "A. Waterman"
  arranger = \markup {\tiny \center-column { "Arranged by Bastiaan Van Essen" "for The Mighty Power Singers" } }
  instrument = "TTBB"
  tagline = "Engraved by CPKC.Music"
}
#(set-global-staff-size 18 )
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
  \key g \major
  \time 4/4
  \tempo 4=84
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1,1
}

lead = \relative c {
  \global
  \clef "treble_8"
  d8^\markup { \teeny \italic "unison Ooo " } g b2~ 8 g8 c c b2 g4 |
  g8 b d2~ 8 c8 b a b2. d,8 g b2~ 8 g8 |
  c8 c b2 g4 g8 b d2~ 8 c8 b a g2. \break |
  %9 Refrain
  b8 d d c~ 2 8 8 8 b8~ 2 b8 8 8 a a b c c  b8 a b2.  |
  b8 d d c~ 2 8 8 8 b8~ 2 b8 8 8 a a b c c  b8 a g2.  |
  %17
  \repeat volta 2 {
    d8 g b2~ 8 g8 c c b2 g4 |
    g8 b d2~ 8 c8 b a b2. d,8 g b2~ 8 g8 |
    c8 c b2 g4 g8 b d2~ 8 c8 b a g2.
    %25 refrain
    b8 d d c~ 2 8 8 8 b8~ 2 b8 8 8 a a b c c  b8 a b2.  |
    b8 d d c~ 2 8 8 8 b8~ 2 b8 8 8 a a b c c  b8 a g2. |

  }
  % vs 4
  \key af \major
  ef8 af c2~ 8 af8 df df c2 af4 |
  af8 c ef2~ 8 df8 c bf c2. ef,8 af c2~ 8 af8 |
  df8 df c2 af4 af8 c ef2~ 8 df8 c bf af2.
  %25 refrain
  c8 ef ef df~ 2 8 8 8 c8~ 2 c8 8 8 bf bf c df df  c8 bf c2. |
  c8 ef ef df~ 2 8 8 8 c8~ 2 c8 8 8 bf bf c df df  c8 bf af2. |
  \bar "|."
}


tenor = \relative c {
  \global
  \clef "treble_8"
  % Music follows here.
  R1*8
  %9
  g'8 b b a ( fs2 ) e8 e e d~ 2 d8 d d c c d e e d c d2. |
  g8 b b a ( fs2 ) e8 e e d~ 2 d8 d d c c d e e d c b2. |
  %17
  \repeat volta 2 {
    d8 8 2~ 8 b8 e e d2 b4 e8 8 fs2~ 8 e8 d c d2. |
    d8 8 2~ 8 b8 e e d2 b4 e8 8 fs2~ 8 e8 d c b2. |
    %25 refrain
    g'8 b b a ( fs2 ) e8 e e d~ 2 d8 d d c c d e e d c d2. |
    g8 b b a ( fs2 ) e8 e e d~ 2 d8 d d c c d e e d c b2. |
    %
  }
  % vs 4
  \key af \major
  ef8 8 2~ 8 c8 f f ef2 c4 f8 8 g2~ 8 f8 ef df ef2. |
  ef8 8 2~ 8 c8 f f ef2 c4 f8 8 g2~ 8 f8 ef df c2. |
  %25 refrain
  af'8 c c bf ( g2 ) f8 f f ef~ 2 ef8 ef ef df df ef f f ef df ef2. |
  af8 c c bf ( g2 ) f8 f f ef~ 2 ef8 ef ef df df ef f f ef df c2. |
  \bar "|."
}


baritone = \relative c' {
  \global
  R1*8
  %9
  r2 d8 d a4 r2 g8 g g4 8 8 8 fs8 8 g8 a a g fs g g g g g4 |
  r2 d'8 d a4 r2 g8 g g4 8 8 8 fs8 8 g8 a a g fs d d e e d4 |
  %17
  \repeat volta 2 {
    r2 g8 8 8 8 8 8 8 8 8 8 d d r2 a'8 8 8 8 g8 fs g 8 8 8 8 4 |
    r2 g8 8 8 8 8 8 8 8 8 8 d d r2 a'8 8 8  \transpose g fs8 g8 fs d8 8 e8 8 d4 |
    %25 refrain
    r2 d'8 d a4 r2 g8 g g4 8 8 8 fs8 8 g8 a a g fs g g g g g4 |
    r2 d'8 d a4 r2 g8 g g4 8 8 8 fs8 8 g8 a a g fs d d e e d4 |
  }
  % vs 4
  \key af \major
  r2 af'8 8 8 8 8 8 8 8 8 8 ef ef r2 bf'8 8 8 8 af8 g af 8 8 8 8 4 |
  r2 af8 8 8 8 8 8 8 8 8 8 ef ef r2 bf'8 8 8 8 af8 g ef8 8 f8 8 ef4 |
  %25 refrain
  r2 ef'8 ef bf4 r2 af8 af af4 8 8 8 g8 8 af8 bf bf af g af af af af af4 |
  r2 ef'8 ef bf4 r2 af8 af af4 8 8 8 g8 8 af8 bf bf af g ef ef f f ef4 |
  \bar "|."
}

bass = \relative c {
  \global

  \xNotesOn
  r2 b8 b b b r2 b8 b b b |
  r2 b8 b b r r4 r8 b b b b4 |
  r2 b8 b b b r2 b8 b b b |
  r2 b8 b b r r4 r8 b b b b4 |
  \xNotesOff
  %9
  r2 d8 8 d 4 r2 g,8 8 4 d'8 8 8 8 8 8 8 8 8 8 g,8 8 8 8 4 |
  r2 d'8 8 d 4 r2 g,8 8 4 d'8 8 8 8 8 8 8 8 8 8 g,8 8 8 8 4 |
  %17
  \repeat volta 2 {
    r2 g8 8 8 8 8 8 8 8 8 8 8 8 r2 d'8 8 8 8 8 8 g,8 8 8 8 4 |
    r2 g8 8 8 8 8 8 8 8 8 8 8 8 r2 d'8 8 8 8 8 8 g,8 8 8 8 4 |
    %25 refrain
    r2 d'8 8 d 4 r2 g,8 8 4 d'8 8 8 8 8 8 8 8 8 8 g,8 8 8 8 4 |
    r2 d'8 8 d 4 r2 g,8 8 4 d'8 8 8 8 8 8 8 8 8 8 g,8 8 8 8 4 |
  }
  % vs 4
  \key af \major
  r2 af8 8 8 8 8 8 8 8 8 8 8 8 r2 ef'8 8 8 8 8 8 af,8 8 8 8 4 |
  r2 af8 8 8 8 8 8 8 8 8 8 8 8 r2 ef'8 8 8 8 8 8 af,8 8 8 8 4 |
  %25 refrain
  r2 ef'8 8 ef 4 r2 af,8 8 4 ef'8 8 8 8 8 8 8 8 8 8 af,8 8 8 8 4 |
  r2 ef'8 8 ef 4 r2 af,8 8 4 ef'8 8 8 8 8 8 8 8 8 8 af,8 8 8 8 4 |
  \bar "|."
}

verseOne = \lyricmode {
  Come ye sin -- ners, lost and hope -- less,
  Je -- sus’ blood will set you free.
  For He saved the worst a -- mong you
  When He saved a wretch like me.
}
refrain = \lyricmode {
  And I know, _ yes I know _
  Je -- sus’ blood can make the vil -- est sin -- ner clean.
  And I know, _ yes I know _
  Je -- sus’ blood can make the vil -- est sin -- ner clean.
}

bbRefrain = \lyricmode {
  And I know,  yes I know
  Je -- sus’ blood can make the vil -- est sin -- ner clean, yes make them clean.
  And I know,  yes I know
  Je -- sus’ blood can make the vil -- est sin -- ner clean, yes make them clean.
}

verseTwo = \lyricmode {
  To the faint He giv -- eth pow -- er,
  through the moun -- tain makes a way;
  find -- eth wa -- ter in the de -- sert,
  turns the night to gol -- den day.
}

bverseTwo = \lyricmode {
  To the faint He giv -- eth pow -- er, giv -- eth pow -- er.
  through the moun -- tain makes a way, yes, makes a way.
  find -- eth wa -- ter in the de -- sert, in the des -- ert,
  turns the night to gol -- den day, to gol -- den day.
}
verseThree = \lyricmode {
  In temp -- ta -- tion, He is near thee,
  holds the pow’r of hell at bay;
  guides you to the path of safe -- ty,
  gives you grace for eve -- ry day.
}

bverseThree = \lyricmode {
  In temp -- ta -- tion, He is near thee, He is near thee.
  holds the pow’r of hell at bay, of hell at bay;
  guides you to the path of safe -- ty, path of safe -- ty,
  gives you grace for eve -- ry day, for eve -- ry day.
}

verseFour = \lyricmode {
  He will keep thee while the a -- ges
  roll through -- out e -- ter -- ni -- ty;
  though earth hin -- der and hell ra -- ges,
  all must work for good to Thee.
}

bverseFour = \lyricmode {
  He will keep thee while the a -- ges while the a -- ges
  roll through -- out e -- ter -- ni -- ty, e -- ter -- ni -- ty;
  though earth hin -- der and hell ra -- ges, and hell ra -- ges,
  all must work for good to Thee,  for good to Thee.
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
    %  shortInstrumentName = \markup \center-column { "Ten" "Lead" }
    } <<
      \clef "treble_8"
      \new Voice = "lead" { \voiceOne \lead}
      \new Voice = "tenor" { \voiceTwo \tenor }
    >>
    \new Lyrics = "firstVerse"
    \lyricsto "lead" {
      \verseOne \refrain

    <<
      { \verseTwo \refrain }
 %{    \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "lead" \verseThree
  %}
      \new Lyrics = "second"
      \with { alignBelowContext =  #"firstVerse" } {
        \set associatedVoice = "lead"
       \verseThree
        \refrain
      }
    >>
    \verseFour \refrain
    }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Baritone" "Bass" }
%      shortInstrumentName = \markup \center-column { "Bar" "Bass" }
    } <<
      \clef bass
      \new Voice = "baritone" { \voiceOne \baritone }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
    \new Lyrics = "bfirstVerse" \lyricsto "baritone" {
      \bbRefrain
      <<
        { \bverseTwo \bbRefrain }
        \new Lyrics = "second"
        \with { alignBelowContext =  #"bfirstVerse" } {
          \set associatedVoice = "baritone"
          \bverseThree \bbRefrain
        }
      >>
      \bverseFour \bbRefrain
    }
    \new Lyrics \lyricsto "bass" { \verseOne }
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

