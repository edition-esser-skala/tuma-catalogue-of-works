\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef tenor
  \key f \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
  r4^\partTs a8 f c'4 b8 c
  a g16 f e8. e16 f4 g8 g
  a16[ h] c8 c \hA h c4
}

text = \lyricmode {
  Ec -- ce nunc be -- ne --
  di -- ci -- te Do -- mi -- num, o -- mnes
  ser -- vi Do -- mi -- ni:
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
