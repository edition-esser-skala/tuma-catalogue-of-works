\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef tenor
  \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Andante"
  c4^\partTs g8 es' d4 c8 h
  c4 g \clef treble \autoBeamOn c''16^\partVi as \grace g f8~ f16 f g f
  b g \grace f es8~ es16 es f es as f \grace es d8 g16 es \grace d c8
}

text = \lyricmode {
  A -- ve Re -- gi -- na coe --
  lo -- rum,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
