\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
    \key b \major \time 4/4 \tempoMarkup "Vivace"
    r8^\partVi f b4 r8 b d4
    r8 d f4 \tuplet 3/2 8 { \sbOn b16( a) b-! f( es) f-! d( c) d-! f( es) f-! }
    \tuplet 3/2 8 { d( c) d-! b( a) b-! f( es) f-! d( c) d-! \sbOff } b8[ f'] b \noBeam \clef soprano \autoBeamOff b^\partSc
    b4 b8 b b b a8. a16
    b4
}

text = \lyricmode {
  \skips 25
  Au --
  di -- te, au -- di -- te in -- su --
  lae,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
