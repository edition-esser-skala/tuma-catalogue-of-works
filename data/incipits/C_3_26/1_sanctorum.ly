\version "2.24.2"
\include "header.ly"

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \tempoMarkup "Recitativo" \autoBeamOff
    r4 d^\solo g g
    g8. g16 a8 h fis fis fis g
    a a c h g g r g16 g
    g8 d f g16 d e8. e16 e4
    r8 g a e fis4 fis
  }
}

AltoLyrics = \lyricmode {
  San -- cto -- rum
  Mar -- ty -- rum tri -- um -- phos et tro --
  phe -- a re -- co -- la -- mus qui con --
  tem -- ptis mun -- di de -- li -- ci -- is
  cru -- ces et mor -- tes,
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Recitativo"
    g1
    g~
    g
    h2 c
    cis d
  }
}

BassFigures = \figuremode {
  r1
  r2 <7\\>
  <\t> <8>
  r1
  r
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
