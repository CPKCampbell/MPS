\version "2.21.0"

\language "english"

\header {
  title = "Can't Help Falling In Love"
  instrument = "TTBB"
  composer = "Weiss, Peretti, Creatore"
  arranger = "Emerson"
  tagline = ""
}
#(set-global-staff-size 18)

\paper {
%  system-system-spacing = #'((basic-distance . 0.5) (padding . 0))
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key ef \major
  \time 4/4
  \tempo "Moderato" 4=72
}

lead = \relative c {
  \global
  \clef "treble_8"
 ef2 bf' ef,2. \tuplet 3/2 {r8 f g} af2 g f2. \tuplet 3/2 {r8 r bf, } |
  c2 d  ef4 r \tuplet 3/2 {f g af} g2 f4. ( ef8 ) |
  ef2. r4 ef2 bf' ef,2. \tuplet 3/2 { r8 f g } |
  af2 g4. ( f8 ) g ( f4.~ f4 ) \tuplet 3/2 { r8 r bf, } c2 d |
  ef4 r \tuplet 3/2 { f g af } g2 f ef2. r4 |
  %19
  d8 g~ \tuplet 3/2 { g bf d } c2 d,8 g~ \tuplet 3/2 { g bf d } c2 d,8 g~ \tuplet 3/2 { g bf d } c2 |
  bf4 bf~ bf8 g bf g af2. r4 ef2 bf' |
  ef,2. \tuplet 3/2 { r8 f g } af2 g f2. \tuplet 3/2 { r8 r bf, } |
  %28
  c2 d ef4 r \tuplet 3/2 { f g af } g2 f |
  ef2. \tuplet 3/2 { r8 r bf  } c2 d ef4 r \tuplet 3/2 { f g af } |
  g2 f ef2. r4 d8 g~ \tuplet 3/2 { g bf d } c2 d,8 g~ \tuplet 3/2 { g bf d } c2 d,8 g~ \tuplet 3/2 { g bf d } c2 |
  bf4 bf~ bf8 g bf g af2. af4 bf2. r4 \bar "||" \key f \major f2 c' f,2.  \tuplet 3/2 {  r8 g a } |
  bf2 a g2. \tuplet 3/2 { r8 r c, } d2 e |
  f4 r \tuplet 3/2 { g a bf } a2 g f2. \tuplet 3/2 { r8 r c }
  d2 e f4 r \tuplet 3/2 { g a bf } a2 ( c )|
  bf2 ( c ) c1~ c R1 \bar "|."
}


tenor = \relative c {
  \global
  \clef "treble_8"
 ef2 bf' ef,2. \tuplet 3/2 {r8 f g} af2 g f2. \tuplet 3/2 {r8 r bf } |
  af2 bf  g4 r \tuplet 3/2 {af bf c } bf2 bf4. ( af8 ) |
  g2. r4 ef'2 d c2 ( bf4 ) \tuplet 3/2 { r8 bf bf } |
  c2 bf bf2. \tuplet 3/2 { r8 r bf } af2 bf |
  c4 r \tuplet 3/2 { af bf c  } bf2 bf g2. r4 |
%19
d'8 d~ \tuplet 3/2 { d d d } ef4 ( d ) d8 d~ \tuplet 3/2 { d d d } d4 ( c ) bf8 bf~ \tuplet 3/2 { bf bf bf } c2 |
bf4 bf ( df8 ) df df df  c2. r4 ef,2 bf' |
ef,2. \tuplet 3/2 { r8 f g  } af2 g f2. \tuplet 3/2 {  r8 r bf } |
%28
af2 bf c4 r \tuplet 3/2 { af bf c } bf2 bf |
g2. \tuplet 3/2 {  r8 r bf } af2 bf c4 r \tuplet 3/2 { af bf c } |
bf2 bf g2. r4 d'8 d~ \tuplet 3/2 { d d d  } ef4 ( d ) |
d8 d~ \tuplet 3/2 { d d d  } d4 ( c ) bf8 bf~ \tuplet 3/2 { bf bf bf  } c2 bf4 bf ( df8) df df df |
c2. c4 d2. r4 \bar "||" \key f \major f,2 c' f,2. \tuplet 3/2 {  r8 g a } |
bf2 a g2. \tuplet 3/2 { r8 r c } bf2 c |
d4 r \tuplet 3/2 { bf c d } c2 c a2. \tuplet 3/2 { r8 r c } |
bf2 c d4 r \tuplet 3/2 { bf c d  } c2 ( f ) |
d2 ( e ) f1~ f R1 \bar "|."
}


bass = \relative c {
  \global
 ef2 bf' ef,2. \tuplet 3/2 {r8 f g} af2 g f2. \tuplet 3/2 {r8 r bf, } |
  c2 d  ef4 r \tuplet 3/2 {f g af} g2 f4. ( ef8 ) |
  ef2. r4 ef2 d ef2. \tuplet 3/2 { r8 f ef } |
  ef2 ef ef8 ( d4.~ d4 ) \tuplet 3/2 { r8 r bf } c2 d |
  ef4 r \tuplet 3/2 { c ef ef } ef2 d bf2. r4 |
%19
d8 g~ \tuplet 3/2 { g g g } a2 d,8 g~ \tuplet 3/2 { g g g } a2
d,8 d~ \tuplet 3/2 { d d d  } ef4 ( f ) |
d4 f ( e8 ) e e e ef2 ( d4 ) r4 ef2 bf' |
ef,2. \tuplet 3/2 { r8 f g } af2 g f2. \tuplet 3/2 { r8 r bf, } |
%28
c2 d ef4 r \tuplet 3/2 { c ef ef  } ef2 d |
bf2. \tuplet 3/2 { r8 r bf8  } c2 d ef4 r \tuplet 3/2 { c ef ef  } |
ef2 d bf2. r4 d8 g~ \tuplet 3/2 { g g g } a2 |
d,8 g~ \tuplet 3/2 { g g g } a2 d,8 d~ \tuplet 3/2 { d d d  } ef4 ( f ) d f (e8) e e e |
ef2 ( d4 ) d f2 ( e4 ) r \bar "||" \key f \major f2 c' f,2. \tuplet 3/2 { r8 g a } |
bf2 a g2. \tuplet 3/2 { r8 r c,8  } d2 e |
f4 r \tuplet 3/2 { d f f  }  f2 e c2. \tuplet 3/2 { r8 r c } |
d2 e f4 r \tuplet 3/2 { d f f  } f2 ( a ) |
f2 ( g ) a1~ a R1 \bar "|."

}

baritone = \relative c {
  \global
 ef2 bf' ef,2. \tuplet 3/2 {r8 f g} af2 g f2. \tuplet 3/2 {r8 r bf } |
  af2 bf  g4 r \tuplet 3/2 {af bf c } bf2 bf4. ( af8 ) |
g2. r4 ef2 bf'c ( bf4 ) \tuplet 3/2 { r8 bf bf } c2 bf bf2. \tuplet 3/2 { r8 r bf } af2 f |
  g4 r \tuplet 3/2 { f g af } g2f ef2. r4 |
  %19
  g8 g~ \tuplet 3/2 { g f f  } fs2 g8 g~ \tuplet 3/2 { g f f  } fs2 g8 g~ \tuplet 3/2 { g f f  } fs4 ( d ) |
  g4 g~ g8 g bf bf f2 ( bf,4) r ef2 bf' |
  ef,2. \tuplet 3/2 { r8 f g } af2 g f2. \tuplet 3/2 { r8 r bf } |
%28
af2 f g4 r \tuplet 3/2 { f g af } g2 f |
ef2. \tuplet 3/2 { r8 r bf' } af2 f g4 r \tuplet 3/2 { f g af  } |
g2 f ef2. r4 g8 g~ \tuplet 3/2 { g f f  } fs2 |
g8 g~ \tuplet 3/2 { g f f  } fs2 g8 g~ \tuplet 3/2 { g f f  } fs4 ( d ) g g~ g8 g bf bf |
f2 ( bf,4 ) bf g'2 ( c,4 ) r \bar "||" \key f \major f2 c' f,2. \tuplet 3/2 {  r8 g a } |
bf2 a g2. \tuplet 3/2 { r8 r c } bf2 g a4 r \tuplet 3/2 {  g a bf  } a2 g f2.  \tuplet 3/2 { r8 r c' } |
bf2 g a4 r \tuplet 3/2 { g a bf } a2 ( c ) bf2 ( c ) c1~ c R1 \bar "||"
}

verse = \lyricmode {

Wise men say
On -- ly fools rush in
But I can't help fall -- ing in love with you
Shall I stay?
Would it be a sin?
If I can't help fall -- ing in love with you

% [Chorus]
Like a riv -- er flows
Sure -- ly to the sea
Dar -- ling, so it goes
Some things are meant to be

% [Verse 2]
Take my hand
Take my whole life too
For I can't help fall -- ing in love with you
For I can't help fall -- ing in love with you

% [Chorus]
Like a riv -- er flows
Sure -- ly to the sea
Dar -- ling, so it goes
Some things are meant to be, to be

%[Verse 3]
Take my hand
Take my whole life, too
For I can't help fall -- ing in love with you
For I can't help fall -- ing in love with you

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
       \set Score.tempoWholesPerMinute = #(ly:make-moment 72 4)
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
  } \lyricsto "tenor" \verse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Lead"
  } \new Voice = "lead" \lead
  %{
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "lead" \verse
  %}
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Baritone"
  } {
    \clef "bass"
    \new Voice = "baritone" \baritone
  }
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "baritone" \verse
  \new Staff \with {
    midiInstrument = "baritone sax"
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
    \tempo 4=72
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "lead"
  \score {
    \rehearsalMidi "lead" "tenor sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "baritone"
  \score {
    \rehearsalMidi "baritone" "baritone sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "alto sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "bassoon" \verse
    \midi { }
  }
}

