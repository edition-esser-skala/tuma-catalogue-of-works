\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    h'1
    h2 h
    e1
    e2 d
    c1
    h2 e~
    e dis
    e2. d8[ c]
    h2 a
  }
}

SopranoLyrics = \lyricmode {
  Vi --
  ne -- a
  me --
  a e --
  le --
  cta, e --
  go,
  e -- go
  te "plan -"
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    R1
    g'
    g2 g
    fis1
    g2 fis
    g1
    a
    g2. g4
    g2 fis
  }
}

AltoLyrics = \lyricmode {
  Vi --
  ne -- a
  me --
  a e --
  le --
  cta,
  e -- go
  te "plan -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    R1
    h
    h2 h
    h1
    e2 fis
    h,1
    a
    h2. h4
    e2 e
  }
}

TenoreLyrics = \lyricmode {
  Vi --
  ne -- a
  me --
  a e --
  le --
  cta,
  e -- go
  te "plan -"
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    R1
    e
    e2 e
    h'1
    h2 a
    g1
    fis
    e2 fis
    g a
  }
}

BassoLyrics = \lyricmode {
  Vi --
  ne -- a
  me --
  a e --
  le --
  cta,
  e -- go
  te "plan -"
}

Organo = {
  \relative c {
    \clef soprano
    \twotwotime \key e \minor \time 2/2 \tempoMarkup "Moderato"
    h''1
    \clef bass e,,
    e2 e
    h'1
    h2 a
    g1
    fis
    e2 fis
    g a
  }
}

BassFigures = \figuremode {
  r1
  r
  r
  <4>2 <3>
  <2> <6>
  q1
  <7>2 <6\\>
  r1
  r
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
