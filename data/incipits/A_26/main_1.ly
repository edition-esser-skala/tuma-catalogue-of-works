\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 4/4 \tempoMarkup "Allegro moderato"
  g''4~^\partVi g16 c h c \grace b a8 g r c,~
  c16 h f'8~ f16 e a8~ a16 g c8 f, e \gotoBar "9"
  \clef soprano \autoBeamOff e8.^\partSc e16 d8 d e e r4
  r2 a,8. a16 h8 h
}

text = \lyricmode {
  \skips 15
  Ky -- ri -- e e -- lei -- son,
  Ky -- ri -- e "e -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
