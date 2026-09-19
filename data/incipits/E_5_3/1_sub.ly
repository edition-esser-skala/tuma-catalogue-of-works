\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key a \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    r2 a'
    cis4. cis8 h4 e~
    e d cis4. cis8
    h4. h8 a4 r
    R1
  }
}

SopranoLyrics = \lyricmode {
  Con --
  fu -- gi -- mus, San --
  cta De -- i
  Ge -- ni -- trix,
}

Alto = {
  \relative c' {
    \clef alto
    \key a \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    e2 fis
    e4 a a8. a16 gis8 gis
    fis4 fis8 gis a e a a
    a4 gis a r
    R1
  }
}

AltoLyrics = \lyricmode {
  Sub tu --
  um prae -- si -- di -- um con --
  fu -- gi -- mus, San -- cta De -- i
  Ge -- ni -- trix,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key a \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1*3
    r2 a4 a8 h
    cis4 h8 a h e, e' e
  }
}

TenoreLyrics = \lyricmode {
  Sed a per --
  i -- cu -- lis cun -- ctis li -- "be -"
}

Basso = {
  \relative c {
    \clef bass
    \key a \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    R1*3
    e4. e8 fis fis e d
    e a, a' a a gis16 gis gis8 gis
  }
}

BassoLyrics = \lyricmode {
  No -- stras de -- pre -- ca -- ti --
  o -- nes ne de -- spi -- ci -- as in "ne -"
}

Organo = {
  \relative c {
    \clef soprano
    \key a \major \time 4/4 \tempoMarkup "[no tempo]"
    << {
      r2 a''
      cis h4 e~
      e d cis2
    } \\ {
      e,2 fis
      e4 a2 gis4
      fis4. gis8 a e a4
    } >>
    \clef bass e,4. e8 fis fis e d
    e a, a'4 a8 gis gis4
  }
}

BassFigures = \figuremode {
  r1
  r
  r
  <4>4 <3> r4. <6>8
  q2 <2>8 <6>4.
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "S" "vl 1" "cnto" }
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "A" "vl 2" "trb 1" }
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "T" "trb 2" }
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "B" "fag" }
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
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
