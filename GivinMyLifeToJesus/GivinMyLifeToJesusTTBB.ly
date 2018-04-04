\version "2.21.0"
\language "english"

\header {
  title = "Givin’ My Life To Jesus"
  subtitle = "He’s My Lord"
  composer = "Folk Melody"
  arranger = "Peter Kennedy"
  poet = "P. Kennedy"
  tagline = ""
}

%% http://lsr.di.unimi.it/LSR/Item?id=856
%% see also lists.gnu.org/archive/html/lilypond-user/2013-12/msg00828.html
% by Paul Morris

% tonic-num: number of the tonic note 0-6, C=0, B=6
% acc-type: the accidental sign type, 1/2=sharp, -1/2=flat
% acc-count: the number and type of accidentals in the key signature
%                  values are: -7 -6 -5 -4 -3 -2 -1 0 1 2 3 4 5 6 7
%                  (negative = flats, positive = sharps)
% tonic-acc: #f if the tonic note is not sharp or flat, otherwise a pair
% maj-num: number of the tonic note 0-6, if the key sig were major
% mode-num: number of the mode 0-6
% txt-size: size of key name text
% padd: padding between key signature and key name
% mult: for correct resizing when the staff is resized

#(define Custom_key_engraver
   (make-engraver
    (acknowledgers
     ((key-signature-interface engraver grob source-engraver)
      ;; if key cancellation then do nothing,
      ;; else modify the key signature stencil
      (if (not (eq? 'KeyCancellation
                    (assq-ref (ly:grob-property grob 'meta) 'name)))
          (let* ((context (ly:translator-context engraver))
                 (tonic-pitch (ly:context-property context 'tonic))
                 (tonic-num (ly:pitch-notename tonic-pitch))
                 (acc-list (ly:grob-property grob 'alteration-alist))

                 (acc-type (if (null? acc-list)
                               0 (cdr (list-ref acc-list 0))))

                 (acc-count (* (length acc-list)
                              (if (< acc-type 0) -1 1)))

                 (maj-num (case acc-count
                            ((0) 0)
                            ((1) 4) ((2) 1) ((3) 5) ((4) 2) ((5) 6) ((6) 3) ((7) 0)
                            ((-1) 3) ((-2) 6) ((-3) 2) ((-4) 5) ((-5) 1) ((-6) 4) ((-7) 0)))

                 (mode-num (modulo (- tonic-num maj-num) 7))
                 (key-letter (case tonic-num
                               ((0) "C" ) ((1) "D" ) ((2) "E" ) ((3) "F" )
                               ((4) "G" ) ((5) "A" ) ((6) "B" )))

                 (mult (magstep (ly:grob-property grob 'font-size 0.0)))

                 (txt-sharp #{ \markup {
                   \translate #(cons (* mult -0.3) (* mult 0.8))
                   \magnify #(* mult 0.9) \sharp
                   } #})

                 (txt-flat #{ \markup {
                   \translate #(cons (* mult -0.2) (* mult 0.4))
                   \magnify #(* mult 0.9) \flat
                   } #})

                 (tonic-acc (if (pair? (assq tonic-num acc-list))
                                (if (= acc-type 0.5) txt-sharp txt-flat)
                                ""))

                 (key-mode (case mode-num
                             ((0) "Major") ((1) "Dorian") ((2) "Phrygian") ((3) "Lydian")
                             ((4) "Mixolydian") ((5) "Minor") ((6) "Locrian")))

                 ;; F Major and D Minor each get extra padding
                 ;; so the name appears above the staff
                 (padd (if (= acc-count -1)
                           (+ 0.5 (* mult 1.2))
                           0.5))

                 (txt-size 0.7)
                 (key-name #{ \markup { #key-letter #tonic-acc #key-mode } #})
                 (key-name-scaled (ly:stencil-scale
                                   (grob-interpret-markup grob key-name)
                                   txt-size txt-size))

                 (key-sig-stencil (ly:key-signature-interface::print grob))
                 (grob-y-ext (ly:grob-property grob 'Y-extent)))

            ;; Names for C Major, A Minor, etc. have to be moved up above the staff
            ;; padd has no effect if there are no sharps or flats in the key signature
            (if (equal? grob-y-ext (cons +inf.0 -inf.0))
                (set! key-name-scaled
                      (ly:stencil-translate-axis key-name-scaled 3 Y)))

            (ly:grob-set-property! grob 'stencil
              (ly:stencil-combine-at-edge key-sig-stencil 1 1
                key-name-scaled padd))))))))


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
  \key g \major
  \time 4/4
  \tempo 4=120
  \autoBeamOff
}

lead = \relative c' {
  \global
  \clef "treble_8"
  \repeat volta 3 {
    \tuplet 3/2 { g4 g g } g4.  b8 a4 g \tuplet 3/2 { d4 (e )fs }  g1~ g
    \tuplet 3/2 { b4 b b } b4. d8 c4 b g4 b b1~ b
    b4 b b c d b g d4 e g g a bf a g2
    \tuplet 3/2 { b4 b b } b4.  c8 b4  a g4 fs
  }
  \alternative {
    { g1~ g }
    {g1~ g }
  }
  %
  \tuplet 3/2 { g4 g g } g4.  b8 a4 g \tuplet 3/2 { d4 (e )fs }  g1
  \tuplet 3/2 { b4 b b } b4. d8 c4 b g4 b b1
  b8 b4 g8 fs2
  d'4 b c b b d \acciaccatura c8 ( b2 ) b4 b b2
  \tuplet 3/2 { b4 b b } a4.  r8
  c2 4 4 b4 b b2
  \tuplet 3/2 { g4 g g } g2
  \tuplet 3/2 { b4 b b } b2
  c4 c \tuplet 3/2 { a4 (g ) fs }  g1~ g

}

tenor = \relative c' {
  \global
  \clef "treble_8"
  \repeat volta 3 {
    \tuplet 3/2 { b4 c d } d2 r \tuplet 3/2 { d4 c d } r4 d2 e4 d1
  }
}

baritone = \relative c' {
  \global
  \repeat volta 3 {
    r4 g r d r fs g a  r4 d,2 e4  d1
    R1*2 r4 d2 e4 d1
    b'4 g g  r g g g r4
    g4 g g fs bf bf bf2
    R1 r2  g4. fs8
  }
  \alternative {
    { g1~ g}
    { g1 r4 r8 d d4 e }
  }
  %vs 4
  g4 8 8 8 8 4 2 a8 a a b a4 g b a g e d b d4. e8 g4 e g b a2 g8 4 e8 d2
  %
  a'2 a4 g b d \acciaccatura b8 ( g2 ) b4 a g2 g8 g~ g4 d4. r8
  a'2 a4 g b d \acciaccatura b8 ( g2 ) b4 a8 a g8 g  (e4) |
  \tuplet 3/2 { g4 g g } g4.  b8 a4 g \tuplet 3/2 { d4 (e )fs }  g1~ g


}

bass = \relative c {
  \global
  g4 r g r d' b a a r g2 a4 g1
    g4 r g r d' b a a r g2 a4 g1

}

verseOne = \lyricmode {
  \set stanza = "1."
  Giv -- in' my life to Je -- sus
  He's my Lord.
  Giv -- in' my life to Je -- sus
  He's my Lord.
  Giv -- in' up my sin -- ful ways
  and liv -- in' as the Bi -- ble says
  Giv -- in' my life to Je -- sus
  He's my Lord.
  %
  Lord.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  Go -- _  in’ up that glo -- ry road with Him
  Go -- _  in’ up that glo -- ry road with Him
  And we're walk -- in’ hand in hand
  He’ll lead me to that pro -- mised land,
  Go -- _  in’ up that glo -- ry road with Him.
  Him.
}

verseThree = \lyricmode {
  \set stanza = "3."
  Gon -- na tell all my friends the Gos -- pel news
  Gon -- na tell all my friends the Gos -- pel news
  Let them know that they can choose
  And that will chase a -- way the blues.
  Gon -- na tell all my friends the Gos -- pel news
  news.
  %
  \set stanza = "4."
  Gon -- _  na cross that Riv -- er Jor -- dan soon
  Gon -- _  na cross that Riv -- er Jor -- dan soon;
  show me the way!
  Sis -- ters, broth -- ers let's go down!
  Let's go down, come _ on down,
  O, peo -- ple let's go down,
  giv -- 'in my life,
  giv -- 'in my life,
  come on down to pray.
}

verseBariOne = \lyricmode {
  He's my Lord.
  He's my Lord.
  Giv -- in' up sin -- ful ways
  liv -- in' as the Bi -- ble says
  He's my Lord
}

verseBariTwo = \lyricmode {
  side by side
  side by side
  and we'll walk hand in hand
  lead me to that Pro -- mised Land
  road with Him
}

verseBariThree = \lyricmode {
  Gos -- pel news
  Gos -- pel news
  Let them know
  they can choose
  that will chase a -- way the blues.
  Gos -- pel news.
  news.
  % vs 4
  As I went down in the riv -- er to pray,
  stud -- y -- in’ a -- bout that good old way,
  and who shall wear the star -- ry crown,
  Good Lord, show me the way.
  O, sist -- ers, let’s go down,  let’s go down,
  come on down.
  O, sist -- ers, let’s go down,
  down in the riv -- er
  giv -- 'in my life to Je -- sus,
  He's my Lord!
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
  \new Lyrics \lyricsto "lead" \verseOne
  \new Lyrics \lyricsto "lead" \verseTwo
  \new Lyrics \lyricsto "lead" \verseThree

  \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Tenor"
  } \new Voice = "tenor" \tenor
 %{ \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "tenor" \verse
 %}
 \new Staff \with {
    midiInstrument = "choir aahs"
    instrumentName = "Baritone"
  } {
    \clef "bass"
    \new Voice = "baritone" \baritone
  }
  \new Lyrics  \lyricsto "baritone" \verseBariOne
  \new Lyrics  \lyricsto "baritone" \verseBariTwo
  \new Lyrics  \lyricsto "baritone" \verseBariThree

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
    \tempo 4=120
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
