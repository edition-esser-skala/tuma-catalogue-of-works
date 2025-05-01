\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key a \minor \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
  r4^\partSc r8 c' h8. h16 a8 a16 h
  c8 c c8. c16 h8 h4 h8
  a a g g16 g g4 g
}

text = \lyricmode {
  Con -- fu -- gi -- mus, san -- cta
  De -- i Ge -- ni -- trix, in ne --
  ces -- si -- ta -- ti -- bus no -- stris
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
