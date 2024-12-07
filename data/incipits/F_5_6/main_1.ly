\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
  h'2^\partSc h4 e8 e
  e8. d16 d8 d c8. c16 c4
  h8 e, e' e e4 dis
  e
}

text = \lyricmode {
  Sub tu -- um prae --
  si -- di -- um con -- fu -- gi -- mus,
  San -- cta De -- i Ge -- ni --
  trix,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
