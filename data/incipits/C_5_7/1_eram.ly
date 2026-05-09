\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    d'2. c4
    b2 a
    g f4 g
    e2. e4
    d2 e
    f4 g a2
    r b
    b a
    a g
    a c!
  }
}

SopranoLyrics = \lyricmode {
  E -- ram
  qua -- si
  a -- gnus _
  in -- no --
  cens, du --
  ctus _ sum
  ad
  im -- mo --
  lan -- _
  dum et
}

Alto = {
  \relative c' {
    \clef alto
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    f2. e4
    d2 f
    e d
    d cis
    d cis
    d4 e f2
    r f
    e e
    d1
    e2 f
  }
}

AltoLyrics = \lyricmode {
  E -- ram
  qua -- si
  a -- gnus
  in -- no --
  cens, du --
  ctus _ sum
  ad
  im -- mo --
  lan --
  dum et
}

Tenore = {
  \relative c' {
    \clef tenor
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    a2 a
    b d
    a a
    a2. a4
    a2 a
    a a
    r d
    e a,
    d1
    cis2 c
  }
}

TenoreLyrics = \lyricmode {
  E -- ram
  qua -- si
  a -- gnus
  in -- no --
  cens, du --
  ctus sum
  ad
  im -- mo --
  lan --
  dum et
}

Basso = {
  \relative c {
    \clef bass
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "Moderato" \autoBeamOff
    d2 f
    g d
    cis d
    a'2. a4
    d,2 a'
    f d
    r d
    cis c
    h b
    a a
  }
}

BassoLyrics = \lyricmode {
  E -- ram
  qua -- si
  a -- gnus
  in -- no --
  cens, du --
  ctus sum
  ad
  im -- mo --
  lan -- _
  dum et
}

Organo = {
  \relative c {
    \clef bass
    \twotwotime \key d \minor \time 2/2 \tempoMarkup "Moderato"
    d2 f
    g d
    cis d
    a'1
    d,2 a'
    f d
    r d
    cis c
    h b
    a1
  }
}

BassFigures = \figuremode {
  r1
  r
  <6 5>
  <4>2 <_+>
  r q
  <6>1
  r2 q
  <7> <6>
  <7> <6>
  <5 _+> <6 _!>
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
