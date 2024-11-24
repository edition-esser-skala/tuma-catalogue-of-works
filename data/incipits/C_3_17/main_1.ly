\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
    \key b \major \time 4/4 \tempoMarkup "Vivace"
    r8^\partVi f b4 r8 b d4
    r8 d f4 \tuplet 3/2 8 { \sbOn b16( a) b-! f( es) f-! d[( c) d]-! } \gotoBar "3" \clef soprano \autoBeamOff b8^\partSc
    b4 b8 b b b a8. a16
    b4
}

text = \lyricmode {
  \skips 12
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
