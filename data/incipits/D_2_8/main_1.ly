\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key g \minor \time 4/4 \autoBeamOff \tempoMarkup "Andante"
  r2^\partSc d4. d8
  es4 d e fis
  g g8 d' g4. f!8
  es4 r8 es d8. d16 c8 d
}

text = \lyricmode {
  De pro --
  fun -- dis, de pro --
  fun -- dis cla -- ma -- _
  vi, cla -- ma -- vi ad te,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
