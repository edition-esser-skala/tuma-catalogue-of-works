\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef tenor
  \key e \minor \time 4/4 \autoBeamOff \tempoMarkup "Moderato"
  e4^\partTs dis e8 h c h16[ a]
  h8. e,16 e8 e a16[ h] c8 c h16[ a]
  g[ fis] e8 h' gis a8. a16 h8 d
}

text = \lyricmode {
  Con -- fi -- te -- bor ti -- bi,
  Do -- mi -- ne, in to -- to cor -- de
  me -- o, in con -- si -- li -- o "iu -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
