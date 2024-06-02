\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef tenor
  \key a \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
  e4^\partTs a,8 e' d cis r cis
  h16[ d] h[ a] gis8. gis16 a4 \clef treble \autoBeamOn h'16^\partVi a'( gis) h,
  a cis fis fis gis, fis'( e) g, fis a d d e, d' cis e,
  d cis' h d, \kneeBeam cis8 a''\p h16( a) a8 e,16\f a e cis
}

text = \lyricmode {
  Lau -- des Ma -- ri -- ae, Ma --
  ri -- ae re -- so -- nas.
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
