\version "2.21.0"
\language "english"

\header {
  title = "I Sing The Mighty Power Of God"
  composer = "Ralph Vaughan Williams"
  arranger = "Mosie Lister"
  poet = "Isaac Watts."
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
  \key g \major
  \time 4/4
  \tempo "Majestic" 4=108
  \partial 4
}

tenor = \relative c' {
  \global
  \repeat volta 2 {
    d,4^\markup { \teeny \italic "Solo second time " } g fs8 (e) d4 g b, c d b' c d e d |
    d2. d,4 g fs8 (e) d4 g b, c d b' |
    c b a a b2. g8 (a) b4 a b c |
    a4 fs8 (g) a4 g8 (a) b4a b c d2. d,4 |
    g4 fs8 (e) d4 g b, c d b' c b8 (c) a4 a |
    b2. \pageBreak
  }
  %vs 3
  \key af \major
  ef,4 af g8 (f) ef4 af c, df ef c' df ef f ef |
  ef2. ef,4 af g8 (f) ef4 af c, df ef c' |
  df c bf bf c2. af8 (bf) c4 bf c df |
  bf4 g8 (af) bf4 af8 (bf) c4bf c df ef2. ef,4 |
  af4 g8 (f) ef4 af c, df ef c' df c8 (df) bf4 bf |
  c1 \breathe
  \repeat volta 2 {
    af4 ( bf c8 df ef4 ) f2\ff \breathe ef ef1
  }
}


lead = \relative c' {
  \global
  \repeat volta 2 {
    d,4 g fs8 (e) d4 g b, c d d e8 (fs) g4 a a |
    b2. d,4 g fs8 (e) d4 g b, c d d |
    e8 (fs) g4 g fs g2. g8 (a) b4 a b c |
    a4 fs8 (g) a4 g8 (a) b4 a b c a2. d,4 |
    g4 fs8 (e) d4 g b, c d b' e,8 (fs) g4 g fs |
    g2.
  }
  % vs 3
  \key af \major
  ef4 af g8 (f) ef4 af c, df ef ef f8 (g) af4 bf bf |
  c2. ef,4 af g8 (f) ef4 af c, df ef ef |
  f8 (g) af4 af g af2. af8 (bf) c4 bf c df |
  bf4 g8 (af) bf4 af8 (bf) c4 bf c df bf2. ef,4 |
  af4 g8 (f) ef4 af c, df ef c' f,8 (g) af4 af g |
  af1
  \repeat volta 2 {
    af4 ( g af c ) d2 bf c1
  }
}



baritone = \relative c {
  \global
  \repeat volta 2 {
    d4 g fs8 (e) d4 g b, c d g g g g fs |
    g2. d4 g fs8 (e) d4 g b, c d g |
    g4 e d d d2. b8 (d) g4 d g e |
    fs4 d8 (e) fs4 e8 (d) g4 d g g fs2. d4 |
    g4 fs8 (e) d4 g b, c d g g e d d |
    d2.
  }
  %vs 3"
  \key af \major
  ef4 af g8 (f) ef4 af c, df ef af af af af g |
  af2. ef4 af g8 (f) ef4 af c, df ef af |
  af4 f ef ef ef2. c8 (ef) af4 ef af f |
  g4 ef8 (f) g4 f8 (ef) af4 ef af af g2. ef4 |
  af4 g8 (f) ef4 af c, df ef af af f ef ef |
  ef1 \breathe
  \repeat volta 2 {
    af4 ( bf af2 ) af \breathe af4 (g) af1
  }
}

bass = \relative c {
  \global
  \repeat volta 2 {
    d4 g fs8 (e) d4 g b, c d g, c b a d  |
    g,2. d'4 g fs8 (e) d4 g b, c d g, |
    c4 e d d g,2. b8 (d) g4 d g e |
    fs4 d8 (e) fs4 e8 (d) g4 d g e d2. d4 |
    g4 fs8 (e) d4 g b, c d g, c e d d |
    g,2.
  }
  %vs 3
  \key af \major
  ef'4 af g8 (f) ef4 af c, df ef af, df c bf ef  |
  af,2. ef'4 af g8 (f) ef4 af c, df ef af, |
  df4 f ef ef af,2. c8 (ef) af4 ef af f |
  g4 ef8 (f) g4 f8 (ef) af4 ef af f ef2. ef4 |
  af4 g8 (f) ef4 af c, df ef af, df f ef ef |
  af,1
  \repeat volta 2 {
    af'4 ( g f ef ) df2 <ef \tweak font-size #-2 ef,>2 af1
  }
}
verseOne = \lyricmode {
  \set stanza = "1."
  I sing the migh -- ty power of God that makes the moun -- tains rise,
  That spread the flow -- ing seas a -- broad, and built the lof -- ty skies.
  I sing the wis -- dom that or -- dained the sun to rule the day;
  The moon shines full at His com -- mand and all the stars o -- bey.

}

verseTwo = \lyricmode {
  \set stanza = "2."
  I sing the good -- ness of the Lord that filled the earth with food;
  He formed the crea -- tures with His Word and then pro -- nounced them good.
  Lord, how thy won -- ders are dis -- played where e’er I turn my eye;
  If  I sur -- vey the ground I tread or gaze up -- on the sky.

}

verseThree = \lyricmode {
    "3. There’s" not a plant or flow’r be -- low but makes Thy glor -- ies known;
  And clouds a -- rise and tem -- pests blow by or -- der from Thy throne;
  While all that bor -- rows life from Thee is ev -- er in Thy care,
  And ev -- ry’ where that man can be, Thou God art pres -- ent there.
}

verseFour = \lyricmode {
  A -- men, a -- men.
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
      %   shortInstrumentName = \markup \center-column { "Ten" "Lead" }
    } <<
      \clef "treble_8"
      \new Voice = "tenor1" { \voiceOne \tenor }
      \new Voice = "tenor2" { \voiceTwo \lead }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor1"  { \verseOne \verseThree \verseFour }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor1" \verseTwo
%{
\new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor1" \verseThree
        \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "tenor1" \verseFour
%}
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Baritone" "Bass" }
      %      shortInstrumentName = \markup \center-column { "Bar" "Bass" }
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

