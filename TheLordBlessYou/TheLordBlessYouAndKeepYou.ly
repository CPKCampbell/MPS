\version "2.21.0"
\language "english"

\header {
  title = "The Lord Bless You And Keep You"
  subtitle = "Benediction with Sevenfold Amen"
  composer = "Peter C. Lutkin, 1901"
  arranger = "Craig C. Hawkins"
  copyright = "Ⓒ 2004 BoMir Publishing, all rights reserved"
  instrument = "TTBB"
  tagline = ""
}

\paper {
 % ragged-last-bottom = ##f
 % annotate-spacing = ##t
}

\layout {
 %  #(layout-set-staff-size 18)
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
   \context {
    \Score
    \override StaffGrouper.staff-staff-spacing.padding = #2
    \override StaffGrouper.staff-staff-spacing.basic-distance = #12
  }
}

global = {
  \key c \major
  \time 4/4
  \partial 4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1,1
  \dynamicUp
}

lead = \relative c {
  \global
  \clef "treble_8"
  e4\p e2 g4 e8 g c4 ( b ) c4. c8 |
  c4 g8 g a8. gs16 a8 a b4 ( a ) b r r8 a8 a a a4 r |
  r8 b8 c b c g a ( b ) c4 e e8. c16 g8 e g4 ( f ) e e8 a |
  a2~ a8 g e g c4. c8 c4 c r r8 c8\p bf4. bf8 |
  a8 g r4 e'4 d c2 b c4 r r2 |


  r4 c4\p( f e ) d2 e(~ e4 fs ) g2 |
  e2.\f( b4 ) a2.\dim b8( a ) g2. a8( g f4 d ) g( a ) g1 g\!
  \bar "||"

}


tenor = \relative c' {
  \global
   \clef "treble_8"
  c4 c2 c4 c8 e f2 g4. e8 |
  e4 c8 e e8. e16 e8 e d2 d4 r r8 cs8 cs cs d4 r |
  r8 d d d c g' g( f ) e( c ) c4 c8. c16 c8 c e4( d ) c r |
  r4 c8 d e e r4 r a,8 c f4 c r r8 f8\p e4. e8 |
  f8 e r4 g4 f e2 d c4 r r2 |
  R1 r4 b\mp( e d) c e( g f
  e\f d c b ) c\dim d8( c ) b2~ b4 c8( b ) a2 |
  a4( af g gf ) f2 f e1\!
  \bar "||"

}


baritone = \relative c' {
  \global
  g4\p g2 e4 c8 c d4( f ) e4. g8 |
  g4 e8 g c8. b16 a8 e g4( fs ) g r r8 e8 f e a4 r |
  r8 g8 a g c r r g g( e ) g c c8. c16 c8 c c4( b ) c r |
  r4 f,8 f e e r4 r f8 g f4 a r r8 a\p g4. g8 |
  bf8 bf r4 a\dim a g2. f4 e g\p( c b ) |
  a4 a( d c ) b2 g4( a8 b ) c2 b4( c8 d ) |
  g,4\f gs( a  e~ e f8 e ) d2~ d4 e8( d ) cs2 |
  d4( b' c2~ c4 d8 c b2 ) c1
  \bar "||"
}

bass = \relative c {
  \global
 c4\p c2 c4 c8 c d4( f ) e4.  g8 |
 c,4 c8 c a8. b16 c8 c d2 g8 g g g g2( f8 ) f f f |
 f2( e8 ) e d4 c8( c' ) g( e ) c8. g'16 g8 g g4( gs ) a r |
 r4 a8 b c c r4 r c8 bf a4 f r4 r8 c8\p c4. c8 |
 c8 c r4 cs4 d e2 d c4 r4 c\p( d8 e ) |
 f2 d4( e8 f ) g2 e4( f8 g ) a2 g4 ( a8 b  |
 c4\f b a g ) f2.\dim g8( f ) e2. f8( e d4 f e ef ) d2 g, c1\!
 \bar "||"
}

verse = \lyricmode {
  The Lord bless you and keep you
  The Lord lift His coun -- ten -- ance up -- on you,
  and give you peace, and give you peace.
  The Lord make His face to shine up -- on you,
  and be gra -- cious un -- to you, be gra -- cious
  The Lord be gra -- cious, gra -- cious un -- to you.
  A -- men, a -- men, A -- men, A -- men,
  A -- men, A -- men, A -- men.

}

verseTen = \lyricmode {
  The Lord bless you and keep you
  The Lord lift His coun -- ten -- ance up -- on you,
  and give you peace, and give you peace.
  The Lord make His face to shine up -- on you,
  and be gra -- cious, and be gra -- cious;
  The Lord be gra -- cious, gra -- cious un -- to you.
  A -- men, a -- men, A -- men, A -- men,
  A -- men, A -- men, A -- men.

}

verseBa = \lyricmode {
  The Lord bless you and keep you
  The Lord lift His coun -- ten -- ance up -- on you,
  and give you peace, and give you peace.
  The Lord make His face to shine up -- on you,
  and be gra -- cious, and be gra -- cious
  The Lord be gra -- cious, gra -- cious un -- to you.
  A -- men, a -- men, A -- men, A -- men,
  A -- men, A -- men, A -- men.

}

verseBs = \lyricmode {
  The Lord bless you and keep you
  The Lord lift His coun -- ten -- ance up -- on you,
  and give you peace, and give you peace.
  The Lord make His face to shine up -- on you,
  and be gra -- cious, and be gra -- cious un -- to you.
  The Lord be gra -- cious, gra -- cious un -- to you.
  A -- men, a -- men, A -- men, A -- men,
  A -- men, A -- men, A -- men.

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
       \set Score.tempoWholesPerMinute = #(ly:make-moment 84 4)
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
  } \lyricsto "tenor" \verseTen
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Lead"
  } \new Voice = "lead" \lead
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "lead" \verse
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Baritone"
  } {
    \clef "bass"
    \new Voice = "baritone" \baritone
  }
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "baritone" \verseBa
  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Bass"
  } {
    \clef bass
    \new Voice = "bass" \bass
  }
   \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "bass" \verseBa
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
    \tempo 4=84
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



%{
convert-ly (GNU LilyPond) 2.21.0  convert-ly: Processing `'...
Applying conversion: 2.19.40, 2.19.46, 2.19.49, 2.21.0
%}
