\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 4/4 \tempoMarkup "Largo"
  c16^\partVi e e g g e e c c f f a a f f c
  \clef soprano \autoBeamOff r4^\partSc c' c h8[ a]
  h2 r

}

text = \lyricmode {
  \skips 16
  Ma -- gni -- fi --
  cat
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
