\version "2.24.2"
\include "header.ly"

Soprano = {
  \relative c' {
    \clef soprano
    \key d \dorian \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    r8 a' d4 c8 d b8. b16
    a8 a a8. a16 a4 r
    b8. b16 b8 b b a c c
    d c d4 c c8 c
    c c c4 b b8 b
  }
}

SopranoLyrics = \lyricmode {
  Sub tu -- um prae -- si -- di --
  um con -- fu -- gi -- mus,
  li -- be -- ra nos sem -- per, Vir -- go
  glo -- ri -- o -- sa, me -- di --
  a -- trix no -- stra, tu -- o
}

Alto = {
  \relative c' {
    \clef alto
    \key d \dorian \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    r4 r8 d a'8. a16 g8 d16 e
    f8 f f8. f16 e8 e4 e8
    d d f g16 g f8 f a a
    b a f4 f a8 a
    fis fis fis4 g r
  }
}

AltoLyrics = \lyricmode {
  Con -- fu -- gi -- mus, San -- cta
  De -- i Ge -- ni -- trix, in ne --
  ces -- si -- ta -- ti -- bus no -- stris, Vir -- go
  glo -- ri -- o -- sa, me -- di --
  a -- trix no -- stra,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key d \dorian \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    R1
    d8 d d a16[ b] c8 c c c
    b b b c c4 r
    r8 a b b a a r4
    a8 a a d d d r4
  }
}

TenoreLyrics = \lyricmode {
  No -- stras de -- pre -- ca -- ti -- o -- nes
  ne de -- spi -- ci -- as,
  Do -- mi -- na no -- stra,
  ad -- vo -- ca -- ta no -- stra,
}

Basso = {
  \relative c {
    \clef bass
    \key d \dorian \time 4/4 \tempoMarkup "[no tempo]" \autoBeamOff
    R1
    r2 r8 a' a e16[ f]
    g4 d8 e f f, r4
    r8 f' b b, f' f, r4
    d'8 d d d g g, g' g
  }
}

BassoLyrics = \lyricmode {
  Sed a per --
  i -- cu -- lis cun -- ctis,
  et be -- ne -- di -- cta,
  ad -- vo -- ca -- ta no -- stra, tu -- o
}

Organo = {
  \relative c {
    \clef soprano
    \key d \dorian \time 4/4 \tempoMarkup "[no tempo]"
    << { r8 a'' d4 c8 d b4 } \\ { r4 r8 d, a'4 g8 d16 e } >>
    \clef tenor d4 d8 a16 b \clef bass a4 a8 e16 f
    g4 d8 e f f, r4
    r8 f' b b, f'4 r
    d2 g8 g, g'4
  }
}

BassFigures = \figuremode {
  r1
  r
  <_->4 <6->8 <6> <4> <3>4.
  r1
  <_+>2 <_->
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "S" "cnto" "vl" }
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "A" "trb 1" "vla" }
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "T" "trb 2" }
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
        \set Staff.instrumentName = \markup \center-column { "org" "fag" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
