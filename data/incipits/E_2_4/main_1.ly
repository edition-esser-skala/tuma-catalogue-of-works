\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key g \minor \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
  d'8[^\partSc es] d c b16[ a] g8 es'4
  d16[ c] b8 r4 f'8[ g] f[ es]
  d16[ c] b8 b b a a g g

}

text = \lyricmode {
  A -- ve Re -- gi -- na coe --
  lo -- rum, sal -- ve
  ra -- dix, sal -- ve ra -- dix, sal -- ve
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
