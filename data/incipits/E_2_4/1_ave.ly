\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key g \minor \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    d'8[ es] d c b16[ a] g8 es'4
    d16[ c] b8 r4 f'8[ g] f[ es]
    d16[ c] b8 b b a a g g
    f f r4 d'16[ a b a] e'[ a, b a]
    f'[ e] d8 r4 b8 c16[ d] es8 c
  }
}

SopranoLyrics = \lyricmode {
  A -- ve Re -- gi -- na coe --
  lo -- rum, sal -- ve
  ra -- dix, sal -- ve ra -- dix, sal -- ve
  por -- ta, gau -- _
  _ de, gau -- de Vir -- go
}

Alto = {
  \relative c' {
    \clef alto
    \key g \minor \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    r2 r4 g'8 f
    f b16 b b8 a b b, r4
    r f'8 g f f d e
    f4 e d r
    r f8 g16[ a] b8 g es f16[ g]
  }
}

AltoLyrics = \lyricmode {
  A -- ve
  Do -- mi -- na An -- ge -- lo -- rum,
  ex qua mun -- do lux est
  or -- _ ta,
  gau -- de Vir -- go glo -- "ri -"
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \minor \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    r2 r4 b8 c
    d d16 d c8 c d d r4
    r d8 c c c d c16[ b]
    a8 d4 cis8 d4 r
    r2 d8 es!16[ f] g8 es
  }
}

TenoreLyrics = \lyricmode {
  A -- ve
  Do -- mi -- na An -- ge -- lo -- rum,
  ex qua mun -- do lux est
  or -- _ _ ta,
  gau -- de Vir -- go
}

Basso = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    r2 r4 g'8 a
    b16[ a] g f es8 f b b, r4
    r d8 e f16[ \hA e] d[ c] b8 c
    d16[ c b a] g8[ a] d4 r
    r d8 es!16[ f] g8 es c d16[ es]
  }
}

BassoLyrics = \lyricmode {
  A -- ve
  Do -- mi -- na An -- ge -- lo -- rum,
  ex qua mun -- do lux est
  or -- _ ta,
  gau -- de Vir -- go glo -- "ri -"
}

Organo = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \tempoMarkup "[no tempo]"
    g'4-\tutti fis g g8 a
    b16 a g f es8 f b b, r4
    r d8 e f16 \hA e d c b8 c
    d16 c b a g8 a d4 cis
    d d8 es!16 f g8 es c d16 es
  }
}

BassFigures = \figuremode {
  <5>8 <6> q <5>4. <6>8 <6 5>
  r4 q <5>8 <6> <5> <4>
  <3>4 <6>8 <6 5>4. <6>8 <_!>
  r4 <6! 5>8 <_+>4. r4
  r1
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "S" "vl" "cnto" }
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "A" "vla" "trb 1" }
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
    \new Staff {
      \set Staff.instrumentName = \markup \center-column { "org" "b" }
      \Organo
    }
    \new FiguredBass { \BassFigures }
  >>
}
