\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key e \minor \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    R1
    h'4^\tutti h cis d8[ e]
    d h e2 d4~
    d c2 h8[ a]
    g[ a] h2 a8[ gis]
  }
}

SopranoLyrics = \lyricmode {
  Ky -- ri -- e e --
  lei -- son, e -- lei --
  _ _
  _ _ \hy
}

Alto = {
  \relative c' {
    \clef alto
    \key e \minor \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    e4^\tutti e fis g8[ a]
    g e h'2 ais4
    h g fis2
    e fis
    g4 fis e2
  }
}

AltoLyrics = \lyricmode {
  Ky -- ri -- e e --
  lei -- son, e -- lei --
  son, e -- lei --
  son, e --
  lei -- _ \hy
}

Tenore = {
  \relative c' {
    \clef tenor
    \key e \minor \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    h4^\tutti e2 dis4
    e fis e d8[ cis]
    d4 r c d8[ c]
    h4 c8[ h] a4 h
    h fis g e
  }
}

TenoreLyrics = \lyricmode {
  Ky -- _ ri --
  e e -- lei -- _
  son, e -- _
  lei -- _ _ _
  son, e -- lei -- \hy
}

Basso = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \tempoMarkup "Adagio" \autoBeamOff
    e4^\tutti c a h
    e d! e fis
    h c! a h
    gis a dis,2
    e4 d c2
  }
}

BassoLyrics = \lyricmode {
  Ky -- _ _ ri --
  e e -- lei -- _
  son, e -- lei -- _
  _ _ _
  son, e -- "lei -"
}

Organo = {
  \relative c {
    \clef bass
    \key e \minor \time 4/4 \tempoMarkup "Adagio"
    e4-\tutti c a h
    e d! e fis
    h c! a h
    gis a dis,2
    e4 d c2~
  }
}

BassFigures = \figuremode {
  r2 <6 5>4 <_+>
  r <6> <6\\ 5> <_+>
  r <3> <6 5> <_!>
  <6 5>2 <7>4 <6>8 <5>
  r4 <6> <7> <6>8 <5\+>
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
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
