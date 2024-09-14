\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \dorian \time 4/4 \tempoMarkup "Adagio assai"
  g'16^\partVi c h c g es' d es as,2
  des,16 g f g e des' c e, f2 \gotoBar "4"
  \clef soprano \autoBeamOff r2 es'4.^\partSc es8
  d4 d des4. des8
}

text = \lyricmode {
  \skips 18
  Mi -- se --
  re -- re me -- i,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
