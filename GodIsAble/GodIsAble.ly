\version "2.21.0"
\language "english"

\header {
  title = "God Is Able"
  composer = "Mosie Lister"
  poet = "Mosie Lister"
  tagline = ""
}

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
}

\layout {
   #(layout-set-staff-size 18)
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
  \context {
      \Lyrics
      \override VerticalAxisGroup.staff-affinity = #CENTER
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #3
      \override LyricText.self-alignment-X = #LEFT
    }
    }

global = {
  \key f \major
    \time 4/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
\set Timing.beatStructure = #'(1 1 1 1)

  \tempo "With assurance " 4 = 120

}

tenor = \relative c' {
  \global
  a8 8 8 gs8 a4 a bf8 8 4 8 8 4 |
  a1~ a2. r4 a8 8 4 4 4 |
c4 4 8 4 8~ 1~ 2 b4\rest b8\rest c |
d8 8 4 4 4 4 8 e8~ e4 b\rest f'8 8 4 c4 8 8 |
cs8 8 e8 d~ d4 b4\rest b8 8 8 8 4 c4 |
d4 8 8 d8( c ) d4 e1 b1\rest |
%21
f'4\mark \markup { \musicglyph "scripts.segno" } d4 c ( a ) f'8 d4 c8~ c4 b4\rest b4\rest c bf bf |
c8 bf4 a8~ a4 b4\rest b\rest d4 cs8 8 8 8 |
%27
d4 a8 d~ d2 b4 b\rest d8 d4 f8~ f1( e2 ) b2\rest |
%30
b8\rest f'8 8 8 4 c4 |
f8 d4 c8~ c2 b4\rest bf bf4 bf |
c4 c8 bf~ bf4 b\rest b\rest c8 c c a4. |
c8 d4 f8~ f4 d \mark \markup { \musicglyph "scripts.coda" } c2 bf8 bf4 a8~ a1\fermata

%42
f8 f f d f4 f |
af8 g f4 f8 ( d ) f4 f1~ f2. b4\rest |
f8 f e e f4 f g g g8 g4 a8~ a1~ a2 b2\rest |
%50
d8 d d4 d d8 d |
d4 d8 e~ e4 b8\rest e8 f4 f c c |
cs4 e8 d~ d4 b\rest b8 b b b b4 c |
% pg 71 ms 55
d8 d d4 d8( c ) d4 e1\mark \markup { " D.S. al Coda "\musicglyph "scripts.coda"  } R1 \bar "||" \break
 c2 \mark \markup { \musicglyph "scripts.coda" }  bf8 bf4 a8~ a2 b2\rest |
 b4\rest f'8 f f f4. f8 f4 f8~ f2~ f1~ f2 b,4\rest d |
 c2 ( d ) d4 ( f ) e2 f1 |
 b,4\rest f'\ff f f f1~ f2. b,4\rest
 \bar "|."

}

lead = \relative c' {
  \global
  f,8 8 8 d8 f4 4 af8 g f4 8 d8 f4 |
  f1~ 2. s4 f8 8 e4 f f |
g4 4 8 4 a8~ 1~ 2 s4 s8 a8 |
bf8 8 4 4 4 4 bf8 c~ c4 s4 d8 8 c4 a a8 8 |
a8 8 8 8~ 4 s4 g8 8 8 8 4 a4 |
b4 8 8 b8( a ) b4 c1 s1 |
%21
c4 bf a( f ) c'8 bf4 a8~ 4 s4 s af4 g f |
af8 g4 f8~ 4 s4 s a4 8 8 8 8 |
%27
a8( g ) f a~ a2 g4 s b8 4  c8~ 1~ 2 s2 |
%30
s8 c8 8 8 4 a4 |
c8 bf4 a8~ 2 s4 f g f |
af4 8 g8~ g4 s4 s4 a8 a a f4. |
a8 bf4 c8~ c4 bf4 a2 g8 g4 f8~ f1

%42
f8 f f d f4 f |
af8 g f4 f8 ( d ) f4 f1~ f2. s4 |
f8 f e e f4 f g g g8 g4 a8~ a1~ a2 s2 |
%50
bf8 bf bf4 bf4 8 8 |
bf4 bf8 c~ c4 s8 c8 d4 c a a |
a4 a8 a~ a4 s4 g8 g g g g4 a |
b8 b b4 b8 ( a ) b4 c1 s1 |
% coda
a2 g8 g4 f8~ f2 s2 |
s4 c'8 c c c4. bf8 d4 d8~ d2~d1~ d2 s4 b |
a1 bf4 ( d ) c2 d1 |
s4 d d8 ( c ) d4 d8 ( c~ c2.~ c2. ) s4
}

baritone = \relative c {
  \global
 c8 8 8 8 4 4 d8 8 4 8 f8 d4 |
 c1~ 2. d4\rest f8 8 g4 f f |
e4 4 8 4 f8~ f1~ f2 d4\rest d8\rest f8 |
f8 8 4 4 4 4 8 g8~ g4 r4 a8 8 4 f4 8 8 |
e8 8 g8 f8~ f4 d4\rest d8 8 8 8 4 e4 |
f4 8 8 f8( e ) f4 g1  d'1\rest |
%21
a4\f f f2 a8 g4 f8~ f4 r r f4 d d |
ef8 d4 c8~ 4 r r f4 e8 8 8 8 |
%27
f8( e ) d f~ f2 d4 b\rest g'8 4 8~ g1( bf2 ) r2 |
%30
r8 a8 8 8 4 4 |
a8 f4 a8~ 2 r4 d,4 4 4 |
f4 f8 d~ d4 r4 r a'8 a a f4. |
f8 g4 a8~ a4 g\mark \markup { \musicglyph "scripts.coda" }  f2 e8 e4 c8~ c1\fermata

%42
f8 f f d f4 f |
af8 g f4 f8 ( d ) f4 f1~ f2. d4\rest |
f8 f e e f4 f g g g8 g4 a8~ a1~ a2 d,2\rest |
%50
f8 f f4 f f8 f |
f4 f8 g~ g4 r8 g8 a4 a f f |
e4 g8 f~ f4 r4 d8 d d d d4 e |
f8 f f4 f8 ( e ) f4 g1 R1 |
% coda
f2 e8 e4 c8~ c2 r2 |
r4 a'8 a a a4. bf8 bf4 b8~ b2~ b1~ b2 d,4\rest af'4 |
f1 g4 ( bf ) bf2 bf1 |
r4 bf4\ff bf8 ( a ) bf4 bf8 ( a~ a2.~ a ) d,4\rest \bar "|."
}

bass = \relative c {
  \global
 f,8 8 8 8 4 4 bf8 8 4 8 8 4 |
 f1~ 2. s4 d'8 8 cs4 d d |
c4 4 8 4 f,8~ f1~ f2 s4 s8 f8 |
bf8 8 4 4 4 g4 8 c8~ c4 r4 f8 8 4 4 f,8 8 |
a8 b cs d~ d4 s4 g,8 8 8 8 4 4 |
g4 8 8 4 4 c1 r4 c8\f bf a( c ) d4 |
f4 4 f,2 8 f4 f8~ f8 f8 g a bf4 4 4 4 |
f8 4 f8~ 8 8 a8 c d4 4 a8 8 8 8 |
%27
d4 8 8~ 2 g,4 s g8 4 c8~ 1~ 2 r8 c8 d c |
%30
f4 8 8 4 4 |
f8 4 8~ 4 c4 bf2 4 4 |
bf4 8 8~ 8 c d e f f f f f f4. |
f8 f4 f8~ f4 bf, c2 c8 c4 f,8~ f1 |

%42
f'8 f f d f4 f |
af8 g f4 f8 ( d ) f4 f1~ f2. s4 |
f8 f e e f4 f g g g8 g4 a8~ a1~ a2 s2 |
%50
bf,8 8 4 4 8 8 |
g4 g8 c~ c4 s8 c8 f4 f f f,8 ( g ) |
a8 ( b ) cs d~ d4 s4 g,8 g g g g4 g |
g8 g g4 g g c1 r4 c8\f bf a ( c ) d4 |
% coda
c2 c8 c4 f,8~ f2 r8 c' d e |
f8 f f f ef ef4. d8 f4 af8~ af2~af1~ af2 s4 f |
f2 ( d ) g, c bf1 |
s4 d4 f g g8( f~ f2.~ f ) s4
}

verseOne = \lyricmode {
 Peo -- ple, do you know there’s trou -- ble all o -- ver this land? __
 Sor -- row and grief and we don't un -- der stand __
 We ough -- ta be on our knees to -- day,
 Ough -- ta cry “Lord, won't you show us the way.”
 Cry -- ing to the Lord, “Come lend us a help -- ing hand.”
 %
God, our God nev -- er fails.
O no, He nev -- er fails __
No mat -- ter what the case may be, __ God nev -- er fails. __
When all the world is go -- ing wrong __
Just keep on hold -- ing on. __
He is a -- ble, He is God __ and
%
God nev -- er fails __
Peo -- ple, do you know we real -- ly do need God’s love __
Need the kind of love we can’t get too much of. __
Ough -- ta cry, “Lord, won’t You see us thro’ __
We need you Lord, in all we do. __
Won't You come on down and show -- er us with Your love?”
% coda
God nev -- er fails. __
He is a -- ble, He is God. __
And God __  nev -- er fails.
He nev -- er fails! __

}

verseBass = \lyricmode {
 \repeat unfold 54 { \skip 1 }
 %
 Don't you know  that
God, our God nev -- er fails.
He nev -- er fails
O no, He nev -- er fails __
And we be -- lieve
\repeat unfold 12 { \skip 1 }
When all the world,
 all the world is go -- ing wrong __
 Hold on __
 keep on hold -- ing on. __
 For He is a -- ble,
 \repeat unfold 64 { \skip 1 }

% coda
Don’t you know that
God nev -- er fails. __
For He is a -- ble,

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
       \set Score.midiMinimumVolume = #0.4
       \set Score.midiMaximumVolume = #0.5
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
         } <<
      \clef "treble_8"
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "lead" { \voiceTwo \lead }
    >>
   \new Lyrics  \lyricsto "tenor" \verseOne
 %{   \new Lyrics  \lyricsto "tenor" { \verseTwo \refrain }
    \new Lyrics  \lyricsto "tenor" \verseThree
 %}
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Baritone" "Bass" }
        } <<
      \clef bass
      \new Voice = "baritone" { \voiceOne \baritone }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
      \new Lyrics  \lyricsto "bass" \verseBass
  >>
  \layout {
  \context {
    \Lyrics
   \override VerticalAxisGroup.staff-affinity = #CENTER
   \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #3
  }
    }
  \midi {
    \tempo 4=100
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
    \rehearsalMidi "lead" "trumpet" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "baritone"
  \score {
    \rehearsalMidi "baritone" "cello" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "bassoon" \verseOne
    \midi { }
  }
}

