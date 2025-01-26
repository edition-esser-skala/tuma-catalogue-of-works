\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
  g'2^\partSc a4 g
  a h c2
  \clef treble \autoBeamOn e,8(^\partVi g) f( a) g( f) e( d)
}

text = \lyricmode {
  San -- _ _
  _ _ ctus,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
